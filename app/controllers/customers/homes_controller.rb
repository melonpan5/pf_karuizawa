class Customers::HomesController < ApplicationController
  def top
    @client_plans = ClientPlan.all.order(created_at: :desc).limit(4)

  end
  def plan_make
  end
  
  def about
  end
end
