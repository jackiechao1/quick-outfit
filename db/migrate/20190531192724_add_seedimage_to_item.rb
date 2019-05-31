class AddSeedimageToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :seed_image, :string
  end
end
