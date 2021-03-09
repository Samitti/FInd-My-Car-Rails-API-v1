class Car < ApplicationRecord
  has_one_attached :image
  validates_presence_of :name, :model, :price, :image
end
