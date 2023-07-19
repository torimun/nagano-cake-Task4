class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :admin_id, null: false #管理者ID(外部キー)
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
