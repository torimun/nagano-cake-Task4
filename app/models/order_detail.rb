class OrderDetail < ApplicationRecord
  belongs_to :order_history
  belongs_to :item
end
