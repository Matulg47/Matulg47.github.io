class CreateTortas < ActiveRecord::Migration[6.1]
  def change
    create_table :tortas do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tamaño
      t.integer :precio
      t.integer :pedido_id
      t.timestamps
    end
  end
end
