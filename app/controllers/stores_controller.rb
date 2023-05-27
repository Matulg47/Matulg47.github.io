class StoresController < ApplicationController

    private
    def find_cart
        session[:cart] ||= Cart.new
    end

    def add_to_cart
        torta = Torta.find(params[:id])
        @cart = find_cart
        @cart.add_product(torta)
        redirect_to(:action => 'display_cart')
    end
    def show
        @cart = find_cart
        @items = @cart.items
    end
end