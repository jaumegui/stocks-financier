class Supplier < ApplicationRecord
  has_many :products, through: :order
end
