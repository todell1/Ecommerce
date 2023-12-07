class CheckoutController < ApplicationController
  before_action :authenticate_user!, only: [:shipping, :payment, :review], 
  unless: -> { user_signed_in? || session[:guest_user_id].present? }
  before_action :set_payment_info, only: [:payment, :summary]

  def shipping
    @shipping_address = current_user.shipping_address
  end
  
  def payment
  end
  
  def shipping_address
    @shipping_address = current_user.shipping_address
  end
  
  def save_shipping_address
    shipping_address = current_user.shipping_address || current_user.build_shipping_address
    shipping_address.update(shipping_address_params)
    redirect_to checkout_payment_path
  end

  def complete
    payment_info = current_user.payment_info || current_user.build_payment_info
    payment_info.update(
      credit_card_number: params[:credit_card_number],
      name_on_card: params[:name_on_card]
    )
  
    order = current_user.orders.new(order_number: SecureRandom.hex(8))
    order.payment_info = payment_info
  
    if order.save
      session[:order_number] = order.order_number
      redirect_to checkout_summary_path(format: :html)
    else
      flash[:alert] = "There was an issue completing your order. Please try again."
      render :payment
    end
  end
  

  
  def summary
    @order_number = session[:order_number]
    @cart_items = current_cart.cart_items
    @shipping_address = ShippingAddress.find_by(user_id: current_user.id)
    #current_cart.cart_items.destroy_all
    session[:cart_id] = nil
  end
  
  
  private
  
  def shipping_address_params
    params.permit(:user_id, :full_name, :address, :apartment, :city, :state, :zipcode, :country, :phone_number)
  end
  
  def set_payment_info
    @payment_info = current_user.payment_info || current_user.build_payment_info
  end
  

end