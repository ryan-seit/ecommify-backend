class Api::V1::OrdersController < ApplicationController

  def index
    orders = Order.includes(@current_user)
    render json: {status: 'SUCCESS', message: 'Loaded orders', data:orders}, status: :ok
  end

  def new
    order = Order.new
  end

  def create
    # order = Order.create(order_params)
    user = User.find_by(id: session[:user_id])

    Order.create(
      user: @current_user,
      total_amount: "0"
    )
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order
  end

  private

  def order_params
    params.require(:order).permit(:total_amount, :user_id)
  end

end

# if order.valid?
#   render json: { order: OrderSerializer.new(order) }, status: :created
# else
#   render json: { error: 'failed to create order' }, status: :unprocessable_entity
# end