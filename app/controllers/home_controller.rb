class HomeController < ApplicationController
    def index
        if session[:cart].nil?
            session[:cart] = []
        end
        @products = Product.all
        @cart = session[:cart]
    end
    def cart
        if session[:cart].nil?
            session[:cart] = []
        end
        @products = Product.all
        @cart = session[:cart]
    end
    def show
    end
    def shop
        if session[:cart].nil?
            session[:cart] = []
        end
        @products = Product.all
        @cart = session[:cart]
    end
    def buy
        if session[:cart].nil?
            session[:cart] = []
        end
        product = Product.find(params[:id])
        session[:cart].append(product)
        redirect_to :shop
    end
    
    def list 
        @products = Product.all
        render json: @products, only: [:id, :name, :quantity, :price]
    end

    def checkout
        @products = Product.all
        @cart = session[:cart]
        @cart.each do |item|
            product = Product.find(item["id"])
            product.quantity = product.quantity-1
            product.save
        end
        session[:cart] = []
        
    end
end
