class Customers::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def show
    @customer = current_customer
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
