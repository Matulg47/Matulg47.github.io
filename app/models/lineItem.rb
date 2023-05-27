class LineItem < ActiveRecord::Base
    belongs_to :torta
    def self.for_product(torta)
        item = self.new
        item.quantity = 1
        item.product = torta
        item.unit_price = torta.precio
        item
    end
end