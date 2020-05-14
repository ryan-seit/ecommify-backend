class OrdersController < ApplicationController

  def index
    @orders = Order.all
    if @orders
      render json: {
        orders: @orders
      }
    else
      render json: {
        status: 500,
        errors: ['no orders found']
      }
    end
  end

  def create
    @order = Order.create(order_params)
    if @order.valid?
      render json: { order: orderSerializer.new(@order) }, status: :created
    else
      render json: { error: 'failed to create order' }, status: :not_acceptable
    end
  end
 
  private

  def order_params
    params.require(:order).permit(:total_amount, :product_id, :user_id)
  end

end
