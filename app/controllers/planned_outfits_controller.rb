class PlannedOutfitsController < ApplicationController
  def index
    # @outfits = current_user.outfits.where(status: "validated").where("rating >= 6")
    @outfits = current_user.outfits.where(status: "validated")
    @planned_outfits = current_user.planned_outfits
  end

  def create
    date = Date.parse(params[:date])
    @planned_outfit = current_user.planned_outfits.find_by(date: date)

    if @planned_outfit.nil?
      outfit = Outfit.find(params[:outfit_id])
      @planned_outfit = PlannedOutfit.new(outfit: outfit)
      @planned_outfit.date = Date.parse(params[:date])
      @planned_outfit.user = current_user
      @planned_outfit.save
      outfit.increment_counter
    else
      @planned_outfit.outfit.decrement_counter
      outfit = Outfit.find(params[:outfit_id])
      @planned_outfit.outfit = outfit
      @planned_outfit.save
    end
    redirect_to planned_outfits_path
  end

  def destroy
    @planned_outfit = PlannedOutfit.find(params[:id])
    @planned_outfit.destroy
    redirect_to planned_outfits_path
  end
end
