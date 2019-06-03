class AddCounterToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :counter, :integer, default: 0, null: false
  end
end
