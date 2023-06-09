class Cart
    attr_reader :items
    attr_reader :total_price
    
    def initialize
        @items = []
        @total_price = 0.0
    end
    
    def add_product(torta)
        @items << LineItem.for_product(torta)
        @total_price += torta.precio
    end
    
end