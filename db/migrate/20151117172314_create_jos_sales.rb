class CreateJosSales < ActiveRecord::Migration
  def change
    create_table :jos_sales do |t|
      t.string  :invoice_no, null: false
 t.string  :code
  t.integer :quantity, default: nil
 t.decimal  :sold_price, precision: 15, scale: 4, default: nil 
  t.text :invoice
t.string  :uid , default: nil
t.datetime :created_on, default: nil
 t.integer :created_by,  default: nil
 t.string :ipaddress, default: nil

      t.timestamps null: false
    end
  end
end
