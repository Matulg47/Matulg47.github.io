class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :quantity, null: false, default: 0
      t.decimal :unit_price, precision: 10, scale: 2
      t.timestamps
    end
   
  end
end
