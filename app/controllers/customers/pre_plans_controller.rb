class Customers::PrePlansController < ApplicationController

    def new

      @pre_plan = PrePlan.new
      session[:order_client_id] = [:order_client_id]
      unless params[:order_client_id]
        redirect_back(fallback_location: customers_client_plans_path)
        flash[:notice] = '※式場を選択してください' and return
      end
      @client_plan = ClientPlan.find_by(client_id: params[:order_client_id])
      @food_items = Item.where(client_id: @client_plan.client_id).where(item_category_id: 1)
      @flower_items = Item.where(client_id: @client_plan.client_id).where(item_category_id: 2)
      @cake_items = Item.where(client_id: @client_plan.client_id).where(item_category_id: 3)
      @dress_items = Item.where(client_id: @client_plan.client_id).where(item_category_id: 4)
      @memory_items = Item.where(client_id: @client_plan.client_id).where(item_category_id: 5)
      @besic_items = Item.where(client_id: @client_plan.client_id).where(item_category_id: 6)
      end
    
    
      def create
        @pre_plan = PrePlan.new(pre_plan_params)
        if current_customer
          @pre_plan.customer_id = current_customer.id
        end

        @pre_plan.client_plan_id =  params[:pre_plan][:client_plan_id]
        unless params[:pre_plan][:meal_item_id]
          redirect_back(fallback_location: customers_client_plans_path)
          flash[:notice] = '※食事・飲み物のコースが選ばれていません。再選択してください。' and return
        end
        unless params[:pre_plan][:cake_item_id]
          redirect_back(fallback_location: customers_client_plans_path)
          flash[:notice] = '※ケーキのコースが選ばれていません。再選択してください。' and return
        end
        unless params[:pre_plan][:dress_item_id]
          redirect_back(fallback_location: customers_client_plans_path)
          flash[:notice] = '※ドレスのコースが選ばれていません。再選択してください。' and return
        end
        unless params[:pre_plan][:memory_item_id]
          redirect_back(fallback_location: customers_client_plans_path)
          flash[:notice] = '※写真・動画のコースが選ばれていません。再選択してください。' and return
        end
        unless params[:pre_plan][:base_pack_item_id]
          redirect_back(fallback_location: customers_client_plans_path)
          flash[:notice] = '※基本パッケージが選ばれていません。再選択してください。' and return
        end
        unless params[:pre_plan][:count]
          redirect_back(fallback_location: customers_client_plans_path)
          flash[:notice] = '※人数が入力されていません。再選択してください。' and return
        end

        if @pre_plan.save
          if customer_signed_in?
            redirect_to new_customers_order_plan_path(pre_plan_id: @pre_plan.id)
          else
            redirect_to new_customer_registration_path(pre_plan_id: @pre_plan.id)
          end
        else
        redirect_back(fallback_location: customers_client_plans_path)
        flash[:notice] = '※プランのアイテムが選ばれていません。再選択してください。' and return
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
