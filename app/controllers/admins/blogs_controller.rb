class Admins::BlogsController < ApplicationController
  def index
    @posts = Blog.all.order(created_at: :desc)
  end

  def show
    @post = Blog.find(params[:id])

  end


  def new
    @post = Blog.new
  end


  def create
    @post = Blog.new(blog_params)
    if @post.save
      redirect_to admins_blog_path(@blog), notice: "記事の新規投稿が完了しました"
    else
      render "new"
    end
  end

  def edit
    @post = Blog.find(params[:id])
  end


def update
  @post = Blog.find(params[:id])
  if @post.update(post_params)
    redirect_to admins_blog_path(@blog)
  else
    render "edit"
  end
end

def destroy
  @post = Blog.find(params[:id])
  @post.destroy
    redirect_to admins_blogs_path
    flash[:notice] = 'successfully　記事を削除しました'
end

  private

  def blog_params
    params.require(:blog).permit(:title, :tag, :text)
  end

end
