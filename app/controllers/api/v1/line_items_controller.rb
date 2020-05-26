class Api::V1::LineItemsController < ApplicationController
  # serialization_scope :current_user
  # before_action :authenticated

  def index
    line_items = LineItem.includes(@current_order)
    render json: {status: 'SUCCESS', message: 'Loaded item', data:line_items}, status: :ok
  end

  def create
    product = Product.find_by(id: params(:product_id))
    order = Order.find_or_create_by(id: params(:order_id))

    line_item = LineItem.find_or_create_by(
      product: product,
      order: order
    )
    # if line_item.valid?
    #   render json: { line_item: LineItemSerializer.new(line_item) }, status: :created
    # else
    #   render json: { errors: line_item.errors.full_messages }, status: :not_acceptable
    # end
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