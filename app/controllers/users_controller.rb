class UsersController < ApplicationController
    def edit_shipping_address
        @shipping_address = current_user.shipping_address || ShippingAddress.new(user: current_user)
    end

    def order
      @orders = current_user.orders.order(created_at: :desc)
    end
    
    def past_orders
      @orders = current_user.orders.order(created_at: :desc)
    end

    
    def index
      @orders = current_user.orders
    end
    def show
      set_order
      @cart_items = @order.order_items
      @shipping_address = current_user.shipping_address
      @payment_info = @order.payment_info
    end
    
    def update_shipping_address
      @shipping_address = current_user.shipping_address
      if @shipping_address.update(shipping_address_params)
        flash[:notice] = "Shipping address updated successfully."
        redirect_to edit_shipping_address_users_path
      else
        flash[:alert] = "Failed to update shipping address."
        render :edit_shipping_address
      end
    end
  
    private
  
    def shipping_address_params
      params.require(:shipping_address).permit(:full_name, :address, :apartment, :city, :state, :zipcode, :phone_number, :country)
    end
    def set_order
      @order = Order.find(params[:id])
    end
  end
  