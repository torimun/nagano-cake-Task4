class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :item_id, null: false #商品ID(外部キー)
      t.integer :customer_id, null: false #会員ID(外部キー)
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
