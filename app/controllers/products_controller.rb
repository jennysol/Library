class ProductsController < ApplicationController
    def index
        @products = Product.order(name: :asc).limit 5
        @discounted_product = Product.order(:preco).limit 1
    end

    def new
        @product = Product.new
    end

    def create
       values = params.require(:product).permit(:name, :description, :value, :amount)
       @product = Product.new values
       if @product.save
           flash[:notice] = "Produto salvo com sucesso!"
           redirect_to root_url
       else 
           render :new
       end
    end

    def destroy
        id = params[:id]
        Product.destroy id
        redirect_to root_url
    end

    def search
        @name = params[:name]
        @products = Product.where "name like ?", "%#{@name}"
    end
end
