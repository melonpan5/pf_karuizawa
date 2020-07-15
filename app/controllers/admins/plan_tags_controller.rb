class Admins::PlanTagsController < ApplicationController
  before_action :authenticate_admin!

	def index
		@plan_tag = PlanTag.new
		@plan_tags = PlanTag.all
	end

	def create
		@plan_tag = PlanTag.new(plan_tag_params)
		if @plan_tag.save
			redirect_back(fallback_location: root_path)
		else
			@plan_tags = PlanTag.all
			render "index"
		end
	end

	def edit
		@plan_tag = PlanTag.find(params[:id])
	end

	def update
		@plan_tag = PlanTag.find(params[:id])
		if @plan_tag.update(plan_tag_params)
			redirect_to admins_plan_tags_path
		else
			render "edit"
		end
  end

  def destroy
    @plan_tag = PlanTag.find(params[:id])
    @plan_tag.destroy
    flash[:notice] = 'プランタグを削除しました'
    redirect_to admins_plan_tags_path
  end


	private
	def plan_tag_params
		params.require(:plan_tag).permit(:name)
	end
end