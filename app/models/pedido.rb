class Pedido < ApplicationRecord
   has_many :tortas#lo cambie, depsues poner que un pedido tiene varios productos y que un producto pertenece a un ùnico pedido, creeeeeo que user no es necesario de momento
end
