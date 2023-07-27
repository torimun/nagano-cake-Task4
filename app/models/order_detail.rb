class OrderDetail < ApplicationRecord
  belongs_to :order_history
  belongs_to :item

  def subtotal
    item.add_tax_price * quantity
  end

  
end
