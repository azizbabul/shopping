class CreateJosCashes < ActiveRecord::Migration
  def change
    create_table :jos_cashes do |t|
 t.decimal  :amount, precision: 20, scale: 6, null: false
  t.decimal :balance,precision: 20, scale: 6
   t.text :description
   t.boolean :in_out
      t.timestamps null: false
    end
  end
end
