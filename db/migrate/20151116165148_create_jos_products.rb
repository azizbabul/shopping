class CreateJosProducts < ActiveRecord::Migration
  def change
    create_table :jos_products do |t|
      t.string :code,  null: false
 t.string :branch, null: false
  t.string :category_id, default: nil
t.string :model, default: nil
t.decimal :purchase_price, precision: 15, scale: 4, null: false
t.decimal :code_price, precision: 15, scale: 4, null: false
t.integer :quantity, null: false
t.text :tags
 t.integer :memo, null: false
  t.integer :first_pin, null: false
  t.integer :last_pin, null: false

      t.timestamps null: false
    end
  end
end
