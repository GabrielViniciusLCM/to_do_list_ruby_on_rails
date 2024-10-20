class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.new(item_params)
    if @item.save
      redirect_to lists_path
    else
      render 'lists/index'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to lists_path
  end

  private

  def item_params
    params.require(:item).permit(:content)
  end
end
