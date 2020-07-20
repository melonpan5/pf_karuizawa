class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!
  
  def top
    @order_plans = OrderPlan.page(params[:page]).per(5)
    
  end

  def order_plan_show
  @order_plan = OrderPlan.find(params[:id])
  @order_client_plan = ClientPlan.find_by(id: @order_plan.client_plan_id)
  @food_plan = Item.find_by(id: @order_plan.meal_item_id)
  @cake_plan = Item.find_by(id: @order_plan.cake_item_id)
  @flower_plan = Item.find_by(id: @order_plan.flower_item_id)
  @memory_plan = Item.find_by(id: @order_plan.memory_item_id)
  @dress_plan = Item.find_by(id: @order_plan.dress_item_id)
  @besic_plan = Item.find_by(id: @order_plan.base_pack_item_id)
  @count = @order_plan.count
  @desired_year = @order_plan.desired_year
  @desired_timing = @order_plan.desired_timing
  @desired_day = @order_plan.desired_day
  @budget = @order_plan.budget
  end


end
