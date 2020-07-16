class Customers::OrderPlansController < ApplicationController
  before_action :authenticate_customer!

  def new
    @pre_plan = PrePlan.find_by(customer_id: current_customer.id)
    @client_plan = ClientPlan.find(@pre_plan.client_plan_id)
    @order_plan = OrderPlan.new
    @order_plan.client_plan_id = @client_plan.id

    @food_plan = Item.find_by(id: @pre_plan.meal_item_id.to_i)
    @cake_plan =Item.find_by(id: @pre_plan.cake_item_id.to_i)
    @flower_plan = Item.find_by(id: @pre_plan.flower_item_id.to_i)
    @memory_plan = Item.find_by(id: @pre_plan.memory_item_id.to_i)
    @dress_plan = Item.find_by(id: @pre_plan.dress_item_id.to_i)
    @besic_plan = Item.find_by(id: @pre_plan.base_pack_item_id.to_i)
    @count = @pre_plan.count
    # @desired_year = params[:order_plan][:desired_year]
    # @desired_timing = params[:order_plan][:desired_timing]
    # @desired_day = params[:order_plan][:desired_day]
    # @budget = params[:order_plan][:budget]


  end

  def confimation 
    @pre_plan = PrePlan.find(customer_id: current_customer.id)
    @order_plan = OrderPlan.new
    @client_plan = ClientPlan.find_by(client_plan_id: @pre_plan.client_plan_id)

    @food_plan = Item.find_by(id: @pre_plan.meal_item_id.to_i)
    @cake_plan =Item.find_by(id: @pre_plan.cake_item_id.to_i)
    @flower_plan = Item.find_by(id: @pre_plan.flower_item_id.to_i)
    @memory_plan = Item.find_by(id: @pre_plan.memory_item_id.to_i)
    @dress_plan = Item.find_by(id: @pre_plan.dress_item_id.to_i)
    @besic_plan = Item.find_by(id: @pre_plan.base_pack_item_id.to_i)
    @count = @pre_plan.count
    @desired_year = params[:order_plan][:desired_year]
    @desired_timing = params[:order_plan][:desired_timing]
    @desired_day = params[:order_plan][:desired_day]
    @budget = params[:order_plan][:budget]


    # @food_plan = Item.find_by(id: params[:order_plan][:meal_item_id].to_i)
    # @cake_plan =Item.find_by(id: params[:order_plan][:cake_item_id].to_i)
    # @flower_plan = Item.find_by(id: params[:order_plan][:flower_item_id].to_i)
    # @memory_plan = Item.find_by(id: params[:order_plan][:memory_item_id].to_i)
    # @dress_plan = Item.find_by(id: params[:order_plan][:dress_item_id].to_i)
    # @besic_plan = Item.find_by(id: params[:order_plan][:base_pack_item_id].to_i)
    # @count = params[:order_plan][:count].to_i
    # @desired_year = params[:order_plan][:desired_year]
    # @desired_timing = params[:order_plan][:desired_timing]
    # @desired_day = params[:order_plan][:desired_day]
    # @budget = params[:order_plan][:budget]

    # unless params[:order][:payment] 
    #   redirect_back(fallback_location: root_path)
    #   flash[:notice] = '※支払い方法が選択されていません' and return
    # else
    #   @order.payment = params[:order][:payment]
    # end


  end

  def create
    @order_plan = OrderPlan.new
    # オーダープラン情報の格納
    @order_plan.customer_id = current_customer.id
    @order_plan.count = params[:order_plan][:order_count].to_i
    @order_plan.meal_item_id = params[:order_plan][:order_plan_food_item_id].to_i
    @order_plan.cake_item_id = params[:order_plan][:order_plan_cake_item_id].to_i
    @order_plan.flower_item_id = params[:order_plan][:order_plan_flower_item_id].to_i
    @order_plan.dress_item_id = params[:order_plan][:order_plan_dress_item_id].to_i
    @order_plan.memory_item_id = params[:order_plan][:order_plan_memory_item_id].to_i
    @order_plan.base_pack_item_id = params[:order_plan][:order_plan_besic_item_id].to_i
    @order_plan.total_price = params[:order_plan][:order_total_price].to_i
    @order_plan.client_plan_id = params[:order_plan][:order_client_plan_id].to_i
    order_plan_client_plan = ClientPlan.find_by(id: params[:order_plan][:order_client_plan_id].to_i)
    @order_plan.client_plan_name = order_plan_client_plan.plan_name
    @order_plan.budget = params[:order_plan][:order_budget].to_i
    @order_plan.desired_year = params[:order_plan][:order_desired_year]
    @order_plan.desired_timing = params[:order_plan][:order_desired_timing]
    @order_plan.desired_day = params[:order_plan][:order_desired_day]
    @order_plan.save
    redirect_to customers_order_plans_thanks_path, notice: "送信完了"
    # else
    #   redirect_back(fallback_location: root_path) and return
    # end
  end


def index
  @customer = current_customer
  @order_plans = OrderPlan.where(customer_id: @customer.id)
end

def show
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


def thanks
end







  private
  def order_plan_params
    params.require(:order_plan).permit(
      :count,
      :meal_item_id,
      :cake_item_id,
      :flower_item_id,
      :dress_item_id,
      :memory_item_id,
      :base_pack_item_id,
      :customer_id,
      :total_price,
      :client_plan_id,
      :client_plan_name,
      :budget,
      :desired_year,
      :desired_timing,
      :desired_day
      )
  end

end


