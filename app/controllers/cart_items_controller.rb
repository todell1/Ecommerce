class CartItemsController < ApplicationController
  def update
    cart = current_or_guest_cart
    cart_item = CartItem.find(params[:id])
  
    if cart_item.cart == cart
      if cart_item_params[:quantity].to_i == 0
        cart_item.destroy
      else
        cart_item.update(cart_item_params)
      end
    end
    redirect_to cart_path(cart)
  end

  def create
    @cart = current_or_guest_cart
    productable = find_productable
    @cart_item = @cart.cart_items.find_or_initialize_by(productable: productable)
    @cart_item.quantity = (@cart_item.quantity || 0) + params[:quantity].to_i
    @cart_item.save
  
    redirect_to cart_path(@cart)
  end
  
  def destroy
    cart_item = CartItem.find(params[:id])
    cart = current_or_guest_cart
    if cart_item.cart == cart
      cart_item.destroy
    end
    redirect_to cart_path(cart)
  end

  private

  def find_productable
    params[:type].constantize.find(params[:id])
  end

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end
  
end
