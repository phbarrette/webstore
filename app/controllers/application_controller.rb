class ApplicationController < ActionController::Base
    def index
        @products = Product.all
    end
    def show
        @product = Product.find(params[:id])
    end
end
