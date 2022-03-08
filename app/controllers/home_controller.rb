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
    def checkout
        @products = Product.all
        @cart = session[:cart]
        session[:cart] = []
        
    end
end
