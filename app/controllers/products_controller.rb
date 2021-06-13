class ProductsController < ApplicationController
    def index
        @products = Product.order :name
        @discounted_product = Product.order(:preco).limit 1
    end
end
