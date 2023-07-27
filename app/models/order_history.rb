class OrderHistory < ApplicationRecord
  #以下のコードでenumの選択部分の情報を作成
  enum method_of_payment: { credit_card: 0, transfer: 1 }
  has_many :order_details
  
end
