class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def csscomponents
  end

  def menu
  end

  def validation
    @outfits = Outfit.where(status: 'pending')
  end
end
