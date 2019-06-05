class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.where(user: current_user)
    # check if there are outfits with status: 'validated' AND validation_seen: false
    # if so, save them into a @newly_validated_outfits
    @newly_validated_outfits = Outfit.where(user: current_user, status: 'validated', validation_seen: false)
    # set all @newly_validated_outfits to validation_seen: true
    @newly_validated_outfits.each do |outfit|
      outfit.validation_seen = true
      outfit.save
    end
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def validate
    outfit = Outfit.find(params[:outfit_id])
    outfit.rating = params[:stars].to_i
    outfit.review = params[:review_outfit]
    outfit.status = 'validated'
    outfit.save
    redirect_back(fallback_location: root_path)
  end

  def counter
    outfit = Outfit.find(params[:outfit_id])
    outfit.increment_counter
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
