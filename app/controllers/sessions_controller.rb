class SessionsController < Devise::SessionsController
    def destroy
      current_cart_id = current_user.cart.id
      super
      cookies.signed[:cart_id] = current_cart_id
    end
  end