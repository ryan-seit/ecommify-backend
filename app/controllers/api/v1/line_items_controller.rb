class Api::V1::LineItemsController < ApplicationController
  # serialization_scope :current_user
  # before_action :authenticated

  def index
    user = User.find_by(id: session[:user_id])
    order = Order.find_by(user_id: user.id)
    # line_items = LineItem.includes(order)
    # user = @current_user
    # order = @current_order
    line_items = order.products
    render json: {status: 'SUCCESS', message: 'Loaded item', data:line_items}, status: :ok
  end

  def create
    # byebug
    # product = Product.find_by(id: params[:product_id])
    product = Product.find_by(id: params[:product][:id])
    user = User.find_by(id: session[:user_id])
    order = Order.find_or_create_by(user_id: user.id)
    line_item = product.line_items.create(order_id: order.id)
    order_total = order.update(:total_amount => order.products.sum(:price))

    if line_item.valid?
      render json: { status: 'SUCCESS', message: 'Created line item and updated total', data:line_item }, status: :ok
    else
      render json: { errors: line_item.errors.full_messages }, status: :bad_request
    end
  end
  
  def destroy
    order = Order.find_by(id: params(:order_id))
    product = Product.find_by(id: params(:product_id))
    line_item = LineItem.find_by(order: order, product: product)
    if line_item
      line_item.destroy
      render json: line_item
    else
      render json: { errors: line_item.errors.full_messages }, status: :bad_request
    end
  end

  private

  def line_item_params
    params.permit(:product_id, :qty, :order_id)
  end

end

  # if line_item.valid?
  #   render json: { line_item: LineItemSerializer.new(line_item) }, status: :created
  # else
  #   render json: { errors: line_item.errors.full_messages }, status: :not_acceptable
  # end