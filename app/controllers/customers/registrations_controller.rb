# frozen_string_literal: true

class Customers::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
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
    super
   
  end

  # POST /resource
  def create
      # ここでUser.new（と同等の操作）を行う
      build_resource(sign_up_params)
      @order_plan = OrderPlan.new
      @order_customer = Customer.new
      @pre_plan = PrePlan.find(params[:customer][:pre_plan_id])
      # ここでUser.save（と同等の操作）を行う
      resource.save do |customer|
          # オーダープラン情報の格納
        @order_plan.customer_id = customer.id
        @order_plan.count = @pre_plan.count
        @order_plan.meal_item_id = @pre_plan.meal_item_id
        @order_plan.cake_item_id = @pre_plan.cake_item_id
        @order_plan.flower_item_id = @pre_plan.flower_item_id
        @order_plan.dress_item_id = @pre_plan.dress_item_id
        @order_plan.memory_item_id = @pre_plan.memory_item_id
        @order_plan.base_pack_item_id = @pre_plan.base_pack_item_id
        @order_plan.client_plan_id = @pre_plan.client_plan_id
        order_plan_client_plan = ClientPlan.find_by(id: @pre_plan.client_plan_id)
        @order_plan.client_plan_name = order_plan_client_plan.plan_name
        @order_plan.budget = params[:customer][:order_plan_attributes]["0"][:budget].to_i
        @order_plan.desired_year = params[:customer][:order_plan_attributes]["0"][:desired_year]
        @order_plan.desired_timing = params[:customer][:order_plan_attributes]["0"][:desired_timing]
        @order_plan.desired_day = params[:customer][:order_plan_attributes]["0"][:desired_day]
        @order_plan.total_price = params[:customer][:order_total_price].to_i
        if @order_plan.save
          @pre_plan.destroy
        end
      end
      # ブロックが与えられたらresource(=User)を呼ぶ
      yield resource if block_given?
      if resource.persisted?
      # 先程のresource.saveが成功していたら
        if resource.active_for_authentication?
        # confirmable/lockableどちらかのactive_for_authentication?がtrueだったら
          # flashメッセージを設定
          set_flash_message! :notice, :signed_up
          # サインアップ操作
          sign_up(resource_name, resource)
          ThanksMailer.send_thanks(resource).deliver
          redirect_to thanks_path

        else
          set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
          # sessionを削除
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
        
      else
        # エラー起こさないためにnewのviewで表示するために再定義
      @client_plan = ClientPlan.find_by(id: @pre_plan.client_plan_id)
      @food_plan = Item.find_by(id: @pre_plan.meal_item_id.to_i)
      @cake_plan =Item.find_by(id: @pre_plan.cake_item_id.to_i)
      @flower_plan = Item.find_by(id: @pre_plan.flower_item_id.to_i)
      @memory_plan = Item.find_by(id: @pre_plan.memory_item_id.to_i)
      @dress_plan = Item.find_by(id: @pre_plan.dress_item_id.to_i)
      @besic_plan = Item.find_by(id: @pre_plan.base_pack_item_id.to_i)
      @count = @pre_plan.count
      # 先程のresource.saveが失敗していたら
        # passwordとpassword_confirmationをnilにする
        clean_up_passwords resource
        # validatable有効時に、パスワードの最小値を設定する
        set_minimum_password_length
        respond_with resource
      end

  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:family_name,:first_name,:kana_family_name,:kana_first_name,:phone_number,:email, order_plan_attributes:
         [
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
         ]])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
