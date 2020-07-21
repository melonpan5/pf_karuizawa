class Customers::ClientsController < ApplicationController
  def index
    @clients = Client.all.order(created_at: :desc)
    @clients = Client.page(params[:page]).per(10)
  end


  def show
    @client = Client.find(params[:id])
  end

end
