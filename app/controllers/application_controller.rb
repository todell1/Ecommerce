class ApplicationController < ActionController::Base


  helper_method :current_or_guest_cart
  helper_method :current_cart

  def current_or_guest_cart
    if user_signed_in?
      current_user.cart || current_user.create_cart
    else
      if cookies[:cart_id].present?
        Cart.find_by(id: cookies.signed[:cart_id]) || Cart.create(user: guest_user).tap { |cart| cookies.signed[:cart_id] = cart.id }
      else
        Cart.create(user: guest_user).tap { |cart| cookies.signed[:cart_id] = cart.id }
      end
    end
  end
  
  
  def current_cart
    if user_signed_in?
      @current_cart ||= current_user.cart || current_user.create_cart
    else
      @current_cart ||= Cart.find_by(id: cookies.signed[:cart_id]) || Cart.create.tap { |cart| cookies.signed[:cart_id] = cart.id }
    end
  end
  def guest_user
    User.find_by(email: 'guest@example.com') || User.create(email: 'guest@example.com', password: 'guest_password')
  end
  def guest_cart(id)
    if cookies[:cart_id].present?
      Cart.find_by(id: cookies.signed[:cart_id])
    elsif id.present?
      cart = Cart.find_by(id: id)
      cookies.permanent.signed[:cart_id] = cart.id
      cart
    else
      cart = Cart.create
      cookies.permanent.signed[:cart_id] = cart.id
      cart
    end
  end
