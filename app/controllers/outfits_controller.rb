class OutfitsController < ApplicationController
  def index
  	@outfits = Outfit.where(user: current_user)
  end

  def show
  	@outfit = Outfit.find(params[:id])
  end
end
