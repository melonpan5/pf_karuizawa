class Customers::PrePlansController < ApplicationController

    def new
        @pre_plan = PrePlan.new
        @client_plan_id = params[:pre_plan][:key_pre_plan_id]
       @food_items = Item.where(client_id: params[:pre_plan][:key_pre_plan_id].to_i).where(item_category_id: 1)
        # @foodplan = params[:client_plan][:meal_item_id].to_i
        # @cakeplan = params[:client_plan][:cake_item_id].to_i
        # @flowerplan = params[:client_plan][:flower_item_id].to_i
        # @memoryplan = params[:client_plan][:memory_item_id].to_i
        # @besic = params[:client_plan][:base_pack_item_id].to_i
        
      end
    
    
      def create
        @pre_plan = PrePlan.new(pre_plan_params)
        # @order_plan.client_id = params[:client_plan][:client_id].to_i
        if @pre_plan.save
        redirect_to new_customers_order_plan_path(@order_plan)
        else
          render "new"
        end
      end
    

end



private
  def pre_plan_params
    params.require(:pre_plan).permit(
      :count,
      :meal_item_id,
      :cake_item_id,
      :flower_item_id,
      :dress_item_id,
      :memory_item_id,
      :base_pack_item_id
      )
  end
