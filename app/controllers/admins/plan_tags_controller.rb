class Admins::PlanTagsController < ApplicationController
  before_action :authenticate_admin!

	def index
		@plan_tag = PlanTag.new
		@plan_tags = PlanTag.all
	end

	def create
		@plan_tag = PlanTag.new(plan_tag_params)
		# if params[:tag_img] != nil
		# 	img = MiniMagick::Image.read(params[:tag_img])
		# 	img.resize "300x300"
		# 	img.write "public/images/hoge.jpg"
		# end

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
		params.require(:plan_tag).permit(:name,:tag_image,:category)
	end
end