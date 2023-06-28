class CreateOrderHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :order_histories do |t|
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :address_name, null: false
      t.integer :payment_amount, null: false
      t.integer :method_of_payment, null: false
      t.integer :postage, null: false
      t.timestamps
    end
  end
end
