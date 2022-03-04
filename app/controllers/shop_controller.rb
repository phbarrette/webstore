class ShopController < ApplicationController
    def shop 
        @products = Product.all
    end
    
end
