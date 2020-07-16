class Customers::PrePlansController < ApplicationController
  before_action :authenticate_customer!
    def new
      
      @pre_plan = PrePlan.new
      @pre_plan.customer_id = current_customer.id
      unless params[:order_client_id]
        redirect_to customers_client_plans_path
        flash[:notice] = 'プランを作成する式場を選択してください' and return
      end
      @client_plan = ClientPlan.find_by(client_id: params[:order_client_id])
      @food_items = Item.where(client_plan_id: @client_plan.id).where(item_category_id: 1)
      @cake_items = Item.where(client_plan_id: @client_plan.id).where(item_category_id: 2)
      @flower_items = Item.where(client_plan_id: @client_plan.id).where(item_category_id: 3)
      @dress_items = Item.where(client_plan_id: @client_plan.id).where(item_category_id: 4)
      @memory_items = Item.where(client_plan_id: @client_plan.id).where(item_category_id: 5)
      @besic_items = Item.where(client_plan_id: @client_plan.id).where(item_category_id: 6)
      end
    
    
      def create
        @pre_plan = PrePlan.new(pre_plan_params)
        @pre_plan.customer_id = current_customer.id
        @pre_plan.client_plan_id =  params[:pre_plan][:client_plan_id]
        if @pre_plan.save

        redirect_to new_customers_order_plan_path
        else
          redirect_to customers_client_plans_path
        flash[:notice] = 'プランを作成する式場を選択してください' and return
        end
        
      end
    

end



private
  def pre_plan_params
    params.require(:pre_plan).permit(
      :client_plan_id,
      :customer_id,
      :client_id,
      :count,
      :meal_item_id,
      :cake_item_id,
      :flower_item_id,
      :dress_item_id,
      :memory_item_id,
      :base_pack_item_id
      )
  end
