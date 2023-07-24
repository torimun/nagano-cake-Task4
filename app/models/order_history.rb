class OrderHistory < ApplicationRecord
  #以下のコードでenumの選択部分の情報を作成
  enum payment_method: { credit_card: 0, transfer: 1 }
end
