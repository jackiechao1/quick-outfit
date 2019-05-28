class Item < ApplicationRecord
  belongs_to :outfit, optional: true
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
