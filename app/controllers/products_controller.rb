class ProductsController < ApplicationController
    def index
        @products = Product.order(name: :desc).limit 5
        @discounted_product = Product.order(:preco).limit 1
    end

    def create
       product =  params.require(:product).permit(:name, :description, :value, :amount)
       Product.create product
       redirect_to root_path
    end
end
