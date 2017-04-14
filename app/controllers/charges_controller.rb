class ChargesController < ApplicationController

  Stripe.api_key = ENV['SECRET_KEY']


	def new
    @amount = 500
	end

def create
  # Amount in cents

  amount = params[:stripeAmount]
  getCrop = Crop.find(params[:cropID])
  test2 = 1

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end


end
