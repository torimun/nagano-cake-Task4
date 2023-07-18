class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :customer_id, null: false #注文履歴ID(外部キー)
      t.integer :item_id, null: false #商品ID(外部キー)
      t.integer :price, null: false
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end
