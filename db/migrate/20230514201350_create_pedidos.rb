class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.string :producto
      t.string :a_nombre_de
      t.date :fecha_de_entrega
      t.date :fecha_pedido #BORRARLO, YA LO HACE AUTOMATICAMENTE osea la fecha en la que se realizò el pedido
      t.timestamps
    end
  end
end
