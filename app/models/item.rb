class Item < ApplicationRecord
    has_one_attached :image
    has_many :cart_item, dependent: :destroy

  def  add_tax_price
    (self.price * 1.10).round
  end

end
