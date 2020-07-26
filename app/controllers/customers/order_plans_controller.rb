class Customers::OrderPlansController < ApplicationController
  # before_action :authenticate_customer!, except: [:show]

  def new
    @order_customer = Customer.new
    
    @pre_plan = PrePlan.find(params[:pre_plan_id])
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
    byebug

  end

  # def confimation 
    
  #   @pre_plan = PrePlan.find(customer_id: current_customer.id)
  #   @order_plan = OrderPlan.new
  #   @client_plan = ClientPlan.find_by(client_plan_id: @pre_plan.client_plan_id)

  #   @food_plan = Item.find_by(id: @pre_plan.meal_item_id.to_i)
  #   @cake_plan =Item.find_by(id: @pre_plan.cake_item_id.to_i)
  #   @flower_plan = Item.find_by(id: @pre_plan.flower_item_id.to_i)
  #   @memory_plan = Item.find_by(id: @pre_plan.memory_item_id.to_i)
  #   @dress_plan = Item.find_by(id: @pre_plan.dress_item_id.to_i)
  #   @besic_plan = Item.find_by(id: @pre_plan.base_pack_item_id.to_i)
  #   @count = @pre_plan.count


  # end

  def create
    @order_plan = OrderPlan.new
    @order_customer = Customer.new

    # オーダープラン情報の格納
    @order_plan.customer_id = current_customer.id
    pre_plan = PrePlan.find_by(customer_id: current_customer.id)
    @order_plan.count = pre_plan.count
 
    @order_plan.meal_item_id = pre_plan.meal_item_id
    @order_plan.cake_item_id = pre_plan.cake_item_id
    @order_plan.flower_item_id = pre_plan.flower_item_id
    @order_plan.dress_item_id = pre_plan.dress_item_id
    @order_plan.memory_item_id = pre_plan.memory_item_id
    @order_plan.base_pack_item_id = pre_plan.base_pack_item_id
    @order_plan.client_plan_id = pre_plan.client_plan_id
    order_plan_client_plan = ClientPlan.find_by(id: pre_plan.client_plan_id)
    @order_plan.client_plan_name = order_plan_client_plan.plan_name
    @order_plan.budget = params[:order_plan][:budget]
    @order_plan.desired_year = params[:order_plan][:desired_year]
    @order_plan.desired_timing = params[:order_plan][:desired_timing]
    @order_plan.desired_day = params[:order_plan][:desired_day]
    @order_plan.total_price = params[:order_plan][:total_price].to_i
    if @order_plan.save
    @customer = current_customer
    current_customer.pre_plans.destroy_all
    ThanksMailer.send_thanks(@customer).deliver
    redirect_to thanks_path
    else
      redirect_back(fallback_location: root_path)
        flash[:notice] = '仮予約プラン送信に失敗しました' and return
    end


  end



def index
  @customer = current_customer
  @order_plans = OrderPlan.where(customer_id: @customer.id)
end


def thanks
end


def show
  unless current_customer || current_admin 
    redirect_to root_path 
  end 
   
  @order_plan = OrderPlan.find(params[:id])
  @order_client_plan = ClientPlan.find(@order_plan.client_plan_id)
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


