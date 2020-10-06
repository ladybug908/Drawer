class Drawer < ApplicationRecord
  belongs_to :user
  belongs_to :partition
  has_many_attached :images
end
