class AddReviewsAndRatingsToOutfits < ActiveRecord::Migration[5.2]
  def change
  	add_column :outfits, :rating, :integer, default: 0, null: false
  	add_column :outfits, :review, :text
  end
end
