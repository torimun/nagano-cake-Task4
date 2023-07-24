class OrderHistory < ApplicationRecord
  #以下のコードでenumの選択部分の情報を作成
  enum method_of_payment: { credit_card: 0, transfer: 1 }

  def subtotal
    item.add_tax_price * amount
  end

end
