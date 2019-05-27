class Item < ApplicationRecord
  belongs_to :outfit
  belongs_to :style
  belongs_to :user
end
