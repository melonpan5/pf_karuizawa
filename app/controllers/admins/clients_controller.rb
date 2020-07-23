class Admins::ClientsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @clients = Client.all.order(created_at: :desc)
    @clients = Client.page(params[:page]).per(5)
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to admins_client_path(@client), notice: "式場情報を新規追加しました"
    else
      render "new"
    end
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end


  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to admins_client_path(@client)
    else
      render "edit"
    end
  end


  def destroy
    @client = Client.find(params[:id])
    if @client.destroy
      redirect_to admins_clients_path
      flash[:notice] = 'successfully　式場情報を削除しました'
    else
      render "show"
    end
  end

end

private
  def client_params
    params.require(:client).permit(
      :tag_id,
      :plan_id,
      :catch,
      :name,
      :introduction,
      :client1_image,
      :client2_image,
      :client3_image,
      :phone_number,
      :email,
      :homepage_url,
      :acces,
      :capacity,
      :regular_holiday,
      :business_hours,
      :wedding_time_zone,
      :other,
      :office_name,
      :staff_name,
      :staff_name_kana,
      :staff_email,
      :staff_phone_number,
      :is_active
    )
  end

