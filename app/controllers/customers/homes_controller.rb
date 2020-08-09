class Customers::HomesController < ApplicationController
  def top
    @client_plans = ClientPlan.all.order(created_at: :desc).limit(4)
    @posts = Blog.all.order(created_at: :desc).limit(3)

  end

  def plan_make
    @search = ClientPlan.ransack(params[:q])
    @taste_tags = PlanTag.where(category: 0)
    @outside_image_tags = PlanTag.where(category: 1)
    @inside_image_tags = PlanTag.where(category: 2)
    @dress_tags = PlanTag.where(category: 3)
    @situation_tags = PlanTag.where(category: 4)
  end
  
  def about
  end

end
