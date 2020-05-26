class ChargesController < ApplicationController

  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    order = Order.find(params[:id])
    amount = order.total_amount

    charge = Stripe::Charge.create(
      # :customer => customer.id,
      :amount => amount,
      :description => 'eCommify Store',
      :currency => 'usd',
      :source => params[:token]
    )
  end

  rescue Stripe::CardError => e
    flash[:errors] = e.message
    redirect_to charges_path
  end

end
