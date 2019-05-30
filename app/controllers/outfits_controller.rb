class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.where(user: current_user)
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def create
    @outfit = Outfit.new(name:  params[:outfit_name])
    @outfit.user = current_user

    # Add all items to outfit
    params[:item][:ids].each do |id|
      @outfit.items << Item.find(id.to_i)
    end
    if @outfit.save
      redirect_to items_path, flash: {outfit_created: @outfit}
    end
  end
end
