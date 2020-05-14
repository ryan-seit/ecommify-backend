class ProductsController < ApplicationController

  def index
    @products = Product.all
    if @products
      render json: {
        products: @products
      }
    else
      render json: {
        status: 500,
        errors: ['no products found']
      }
    end
  end

end
