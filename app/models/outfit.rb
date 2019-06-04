class Outfit < ApplicationRecord
  belongs_to :user
  has_many :outfit_items, dependent: :destroy
  has_many :items, through: :outfit_items

  def increment_counter
    items.each do |item|
      item.counter += 1
      item.save
    end
  end

  def decrement_counter
    items.each do |item|
      item.counter -= 1
      item.save
    end
  end
end
