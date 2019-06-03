class CreatePlannedOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :planned_outfits do |t|
      t.references :outfit
      t.references :user
      t.date :date
      t.timestamps
    end
  end
end
