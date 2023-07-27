class Item < ApplicationRecord
    has_one_attached :image
    has_many :cart_items, dependent: :destroy
    has_many :order_histories

  def add_tax_price
    (self.price * 1.10).floor
  end

end
