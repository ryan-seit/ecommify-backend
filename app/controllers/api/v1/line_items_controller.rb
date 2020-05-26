class Api::V1::LineItemsController < ApplicationController

  def index
    line_items = LineItem.all
    render json: {status: 'SUCCESS', message: 'Loaded item', data:line_items}, status: :ok
  end

  def create
    line_item = LineItem.create(line_item_params)
    if line_item.valid?
      render json: { line_item: LineItemSerializer.new(line_item) }, status: :created
    else
      render json: { errors: line_item.errors.full_messages }, status: :not_acceptable
    end
  end

  private

  def line_item_params
    params.permit(:product_id, :qty, :order_id)
  end

end
