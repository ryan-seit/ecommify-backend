class Api::V1::ProductsController < ApplicationController

  def index
    products = Product.order('category ASC');
    render json: {status: 'SUCCESS', message:'Loaded products', data:products}, status: :ok
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: {status: 'SUCCESS', message:'Loaded product', data:product}, status: :ok
  end

end