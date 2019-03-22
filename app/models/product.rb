class Product < ApplicationRecord
  belongs_to :user
  has_many :bought_products
end
