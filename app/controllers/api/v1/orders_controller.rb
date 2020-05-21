class Api::V1::OrdersController < ApplicationController

  def index
    orders = Order.all
    render json: orders
  end

  def create
    order = Order.create(order_params)
    if order.valid?
      render json: { order: orderSerializer.new(order) }, status: :created
    else
      render json: { error: 'failed to create order' }, status: :not_acceptable
    end
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order
  end

  private

  def order_params
    params.require(:order).permit(:total_amount, :product_id, :user_id)
  end

end