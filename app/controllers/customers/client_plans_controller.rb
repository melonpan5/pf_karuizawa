class Customers::ClientPlansController < ApplicationController
  def index

    @client_plans = ClientPlan.all.order(created_at: :desc)
  end

  def show
    @client_plan = ClientPlan.find(params[:id])

    @client_id = @client_plan.client_id
    @pre_plan = PrePlan.new
    @menue = Item.where(client_id: @client_plan.client_id)
    @food_plan = Item.find(@client_plan.meal_item_id)
    @cake_plan = Item.find(@client_plan.cake_item_id)
    @dress_plan = Item.find(@client_plan.dress_item_id)
    @flower_plan = Item.find(@client_plan.flower_item_id)
    @memory_plan = Item.find( @client_plan.memory_item_id)
    @besic_plan = Item.find(@client_plan.base_pack_item_id)

   
  end

  def search_client_plans
    @search = ClientPlan.ransack(params[:q])
    @search_plans = @search.result.includes(:plan_tags).distinct
    @client_plans = ClientPlan.all.order(created_at: :desc)
  end

  private

  def client_plan_params
    params.require(:client_plan).permit(plan_tag_ids: [])
  end


end
