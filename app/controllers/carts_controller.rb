class CartsController < ApplicationController
  def show
    @cart = current_or_guest_cart
    @cart_items = @cart.cart_items.includes(:productable)
  end
  
  
  def empty
    flash[:notice] = "Your cart is empty. Add some items to it first."
    redirect_to components_path
  end
  def create
    @cart = current_or_guest_cart
    return redirect_to(components_path, alert: 'Please sign in or sign up to add items to your cart.') unless @cart

    productable = find_productable
    @cart_item = @cart.cart_items.find_or_initialize_by(productable: productable)

    @cart_item.quantity = (@cart_item.quantity || 0) + params[:quantity].to_i
    @cart_item.save

    redirect_to cart_path(@cart)
  end

  private

  def find_productable
    params[:type].constantize.find(params[:id])
  end
end