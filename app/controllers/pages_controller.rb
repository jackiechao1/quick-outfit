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

  def random
    tops = Item.where(category: 'top', user: current_user)
    bottoms = Item.where(category: 'bottom', user: current_user)
    shoes = Item.where(category: 'shoes', user: current_user)
    
    @tops = tops.sample(2)
    @bottom = bottoms.sample
    @shoe = shoes.sample
  end
end
