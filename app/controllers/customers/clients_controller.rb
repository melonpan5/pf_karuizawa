class Customers::ClientsController < ApplicationController
  def index
    @client_plans = ClientPlan.all.order(created_at: :desc)
    @client_plans = ClientPlan.page(params[:page]).per(10)
  end


  def show
    @client = Client.find(params[:id])
  end

end
