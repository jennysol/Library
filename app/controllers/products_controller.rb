class ProductsController < ApplicationController
    def index
        @products = Product.order(name: :desc).limit 2
        @discounted_product = Product.order(:preco).limit 1
    end

    def create
       product =  params.require(:product).permit(:name, :description, :preco, :amount)
       Product.create product
    end
end
