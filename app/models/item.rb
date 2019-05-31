class Item < ApplicationRecord
  has_many :outfit_items, dependent: :destroy
  has_many :outfits, through: :outfit_items
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
