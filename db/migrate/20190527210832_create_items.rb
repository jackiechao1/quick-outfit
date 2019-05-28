class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :category
      t.string :color
      t.references :outfit, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
