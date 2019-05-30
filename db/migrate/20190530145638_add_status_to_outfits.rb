class AddStatusToOutfits < ActiveRecord::Migration[5.2]
  def change
  	add_column :outfits, :status, :string, default: 'pending'
  end
end
