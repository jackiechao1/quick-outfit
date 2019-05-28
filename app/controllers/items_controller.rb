class ItemsController < ApplicationController
  def index
  	@tops = Item.where(category: 'top', user: current_user)
  	@bottoms = Item.where(category: 'bottom', user: current_user)
  	@shoes = Item.where(category: 'shoes', user: current_user)
  	@accessories = Item.where(category: 'accessories', user: current_user)
    @item = Item.new
  end

  def create
  	@item = Item.new(item_params)
    @item.user = current_user
  	if @item.save!
  		redirect_to items_path
  	else
  		render :new
  	end
  end


  def edit
		@item = Item.find(params[:id])
  end

  def update
  	@item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
  	item = Item.find(params[:id])
  	item.destroy
  	redirect_to items_path
  end

  private

  def item_params
  	params.require(:item).permit(:category, :color, :photo, :style, :photo_cache)
  end
end
