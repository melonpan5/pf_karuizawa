class Admins::ClientPlansController < ApplicationController
  before_action :authenticate_admin!
  def index
    @client_plans = ClientPlan.all.order(created_at: :desc)
    @client_plans = ClientPlan.page(params[:page]).per(10)
  end


  def client_select
    @client_plan = ClientPlan.new

  end

  def new

    if params[:client_plan][:client_id]
      @client_plan = ClientPlan.new
      @client_plan.client_id = params[:client_plan][:client_id].to_i
    else
      redirect_to admins_client_plans_client_select_path
      flash[:notice] = '※式場を選択してください' and return
    end
   
  end


  def create
    @client_plan = ClientPlan.new(client_plan_params)
    food_plan = Item.find_by(id: params[:client_plan][:meal_item_id])
    cake_plan = Item.find_by(id: params[:client_plan][:cake_item_id])
    dress_plan = Item.find_by(id: params[:client_plan][:dress_item_id])
    flower_plan = Item.find_by(id: params[:client_plan][:flower_item_id])
    memory_plan = Item.find_by(id: params[:client_plan][:memory_item_id])
    besic_plan = Item.find_by(id: params[:client_plan][:base_pack_item_id])
    @client_plan.client_id = params[:client_plan][:client_id].to_i
    item_sum = cake_plan.unit_price + dress_plan.unit_price + flower_plan.unit_price + memory_plan.unit_price + besic_plan.unit_price
    food_sum = food_plan.unit_price * params[:client_plan][:count].to_i
    in_price = 30000 * params[:client_plan][:count].to_i  #ご祝儀金額の計算
    this_plan_total_price = food_sum.to_i + item_sum.to_i #総額計算
    @client_plan.total_price = this_plan_total_price.to_i
    if @client_plan.save
      redirect_to admins_client_plan_path(@client_plan), notice: "プランを新規追加しました"
    else
      render "new"
    end
  end

  def show
    @client_plan = ClientPlan.find(params[:id])
    @food_plan = Item.find_by(id: @client_plan.meal_item_id)
    @cake_plan = Item.find_by(id: @client_plan.cake_item_id)
    @dress_plan = Item.find_by(id: @client_plan.dress_item_id)
    @flower_plan = Item.find_by(id: @client_plan.flower_item_id)
    @memory_plan = Item.find_by(id: @client_plan.memory_item_id)
    @besic_plan = Item.find_by(id: @client_plan.memory_item_id)

  end



  def edit
    @client_plan = ClientPlan.find(params[:id])
    @client = @client_plan.client_id
  end


def update
  @client_plan = ClientPlan.find(params[:id])
  if @client_plan.update(client_plan_params)
    redirect_to admins_client_plan_path(@client_plan)
  else
    render "edit"
  end
end

def destroy
  @client_plan = ClientPlan.find(params[:id])
  @client_plan.destroy
    redirect_to admins_client_plans_path
    flash[:notice] = 'successfully　商品を削除しました'
end

end

private
  def client_plan_params
    params.require(:client_plan).permit(
      :client_id,
      :plan_name,
      :plan_catch,
      :plan_text,
      :count,
      :meal_item_id,
      :cake_item_id,
      :flower_item_id,
      :dress_item_id,
      :memory_item_id,
      :base_pack_item_id,
      :total_price,
      plan_tag_ids: [])
  end
