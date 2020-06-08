class ChargesController < ApplicationController

  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    order = Order.find(1)
    amount = order.total_amount

    charge = Stripe::Charge.create(
      # :customer => customer.id,
      :amount => amount,
      :description => 'coda store',
      :currency => 'usd',
      :source => params[:token]
    )

  rescue Stripe::CardError => e
    flash[:errors] = e.message
    redirect_to charges_path
  end

end