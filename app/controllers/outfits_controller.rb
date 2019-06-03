class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.where(user: current_user)
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def validate
    outfit = Outfit.find(params[:outfit_id])
    outfit.rating = params[:rating_outfit].to_i
    outfit.review = params[:review_outfit]
    outfit.status = 'validated'
    outfit.save
    redirect_back(fallback_location: root_path)
  end

  def create
    @outfit = Outfit.new(name: params[:outfit_name])
    @outfit.user = current_user

    # Add all items to outfit
    params[:item][:ids].each do |id|
      @outfit_item = OutfitItem.new
      @outfit_item.item = Item.find(id.to_i)
      @outfit.outfit_items << @outfit_item
    end

    redirect_to items_path, flash: { outfit_created: @outfit } if @outfit.save
  end

  def destroy
    outfit = Outfit.find(params[:id])
    outfit.destroy
    redirect_back(fallback_location: root_path)
  end
end
