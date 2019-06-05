class AddValidationSeenToOutfits < ActiveRecord::Migration[5.2]
  def change
  	add_column :outfits, :validation_seen, :boolean, default: false
  end
end
