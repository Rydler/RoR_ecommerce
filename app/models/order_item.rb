class OrderItem < ApplicationRecord
  belongs_to :variants
  belongs_to :order
end
