class OutfitsController < ApplicationController
  def index
  	@outfits = Outfit.all
  end

  def show
  	@outfit = Outfit.find(params[:id])
  end
end
