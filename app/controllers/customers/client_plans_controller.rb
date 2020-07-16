class Customers::ClientPlansController < ApplicationController
  def index

    @client_plans = ClientPlan.all.order(created_at: :desc)
  end

  def show
    @client_plan = ClientPlan.find(params[:id])
    @client_id = @client_plan.client_id
    # @pre_plan = PrePlan.new
    @menue = Item.where(client_id: @client_plan.client_id)


    @food_plan = Item.find_by(id: @client_plan.meal_item_id)
    @cake_plan = Item.find_by(id: @client_plan.cake_item_id)
    @dress_plan = Item.find_by(id: @client_plan.dress_item_id)
    @flower_plan = Item.find_by(id: @client_plan.flower_item_id)
    @memory_plan = Item.find_by(id: @client_plan.memory_item_id)
    @besic_plan = Item.find_by(id: @client_plan.base_pack_item_id)

   
  end
  def search_client_plans
    @client_plans = ClientPlan.all.order(created_at: :desc)
  end

  private

  def client_plan_params
    params.require(:client_plan).permit(plan_tag_ids: [])
  end


end
