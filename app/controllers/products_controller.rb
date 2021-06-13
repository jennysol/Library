class ProductsController < ApplicationController
    def index
        @products = Product.order(name: :desc).limit 2
        @discounted_product = Product.order(:preco).limit 1
    end
end
