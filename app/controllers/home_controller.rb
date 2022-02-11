class HomeController < ApplicationController
    def index
        @products = Product.all
    end

    def featured
        @products = products.recent
    end

    #def cat1
    #end

    #def cat2
    #end

    def show
        @product = Product.find(params[:id])
    end

    def secret
        @secret_message = "go army"
    end
end
