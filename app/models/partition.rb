class Partition < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  def self.search(search)
    if search != ""
      Partition.where('text LIKE(?)', "%#{search}%")
    else
      Partition.all
    end
  end
end
