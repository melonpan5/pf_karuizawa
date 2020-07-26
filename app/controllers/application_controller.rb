class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_search

    # protect_from_forgery with: :exception
    # before_action :createlogin
    # def createlogin
    #   if Customer.find_by(id:session[:customer_id])
    #     current_customer = Customer.find_by(id:session[:customer_id])
    #   else
    #     current_customer = Customer.new
    #     current_customer.save
    #     session[:customer_id] = current_customer.id
    #   end
    #   byebug
    # end

    
    def after_sign_out_path_for(a) #ログアウトした時の遷移先
      if a == :admin
        new_admin_session_path
      else
        root_path
      end
    end
  
    def after_sign_in_path_for(resource) #ログインした時の遷移先
      case resource
      when Admin
        admins_root_path
      when Customer
        root_path
       end
    end

    def after_sign_up_path_for(resource) #新規登録した時の遷移先
      case resource
      when Customer
        thanks_path
       end
    end

    def set_search
      @search = ClientPlan.ransack(params[:q])
      # plan_tag_categoryごとにplan_tagを抽出
      @taste_tags = PlanTag.where(category: 0)
      @outside_image_tags = PlanTag.where(category: 1)
      @inside_image_tags = PlanTag.where(category: 2)
      @dress_tags = PlanTag.where(category: 3)
      @situation_tags = PlanTag.where(category: 4)
      @search_plans = @search.result.includes(:plan_tags).distinct
    
    end
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:kana_family_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:kana_first_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number])
    end
  end
  