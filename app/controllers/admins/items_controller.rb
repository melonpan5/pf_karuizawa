class Admins::ItemsController < ApplicationController
  def index
    @items = Item.all.order(created_at: :desc)
    @items = Item.page(params[:page]).per(10)
  end

  def create
    @item = Item.new(item_params)
    @item.client_id = params[:item][:client_id].to_i
    byebug
    if @item.save
      redirect_to admins_item_path(@item), notice: "商品を新規追加しました"
    else
      render "new"
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end


def update
  @item = Item.find(params[:id])
  if @item.update(item_params)
    redirect_to admins_item_path(@item)
  else
    render "edit"
  end
end

def destroy
  @item = Item.find(params[:id])
  @item.destroy
    redirect_to admins_items_path
    flash[:notice] = 'successfully　商品を削除しました'
end

end
private
  def item_params
    params.require(:item).permit(
      :item_category_id,
      :name,
      :description,
      :unit_price,
      :item_image,
    )
  end
