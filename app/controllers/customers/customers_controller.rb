class Customers::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def create　#order createとcustomer createを一緒にやる
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
    @order_plan.budget = params[:order_plan][:budget].to_i
    @order_plan.desired_year = params[:order_plan][:desired_year]
    @order_plan.desired_timing = params[:order_plan][:desired_timing]
    @order_plan.desired_day = params[:order_plan][:desired_day]
    @order_plan.total_price = params[:order_plan][:total_price].to_i
    if @order_plan.save
    current_customer.pre_plans.destroy
    @customer = current_customer
    ThanksMailer.send_thanks(@customer).deliver
    redirect_to thanks_path
    else
      redirect_back(fallback_location: root_path)
        flash[:notice] = '仮予約プラン送信に失敗しました' and return
    end


  end

  def show
    @customer = current_customer
    if @customer != current_customer
      redirect_to root_path
    end
    # @order_plans = OrderPlan.where(customer_id: @customer.id)
    @order_plans = @customer.order_plans
  end

 
  def edit
    @customer = Customer.find(params[:id])
    if @customer.id != current_customer.id
    redirect_to customers_customer_path(current_customer)
    end
  end
  
  def update
  	@customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customers_customer_path(current_customer)
      flash[:notice] = 'successfully　更新しました'
    else
     render :edit
    end
  end


  def destroy
       @customer = Customer.find(params[:id])
       if @customer != current_customer
        redirect_to root_path
      end
     if @customer.destroy
      redirect_to customers_customer_path(current_customer)
      flash[:notice] = '退会しました'
     else
      render :show
     end
  end



  private
   def customer_params
      params.require(:customer).permit(:family_name,:first_name,:kana_family_name,:kana_first_name,:phone_number,:email)
  end

  protected
    # アカウント編集後、マイページへに移動する
  def after_update_path_for(resource)
    customers_customer_path(id: current_customer.id)
  end

end
