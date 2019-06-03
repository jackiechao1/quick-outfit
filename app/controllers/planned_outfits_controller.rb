class PlannedOutfitsController < ApplicationController
  def index
    @planned_outfits = PlannedOutfit.all
  end

  def create
    outfit = Outfit.find(params[:outfit_id])
    @planned_outfit = PlannedOutfit.new(outfit: outfit)
    @planned_outfit.date = Date.today
    @planned_outfit.user = current_user
    @planned_outfit.save
    outfit.increment_counter
    redirect_to planned_outfits_path
  end

  def update
    @planned_outfit = PlannedOutfit.find(params[:id])
  end

  def destroy
    @planned_outfit = PlannedOutfit.find(params[:id])
    @planned_outfit.destroy
    redirect_to PlannedOutfit_path
  end
end
