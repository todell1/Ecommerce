class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.includes(:order_items).order(created_at: :desc)
  end

  def show
    
    @order = Order.find(params[:id])
    @shipping_address = current_user.shipping_address
    @cart_items = @order.cart_items
  end
  def create
    @order = current_user.orders.build(order_params)
    @order.payment_info = current_user.payment_info

    if @order.save
      @cart_items = current_cart.cart_items.includes(:productable)
      @cart_items.each do |item|
        OrderItem.create(
          order: @order,
          productable: item.productable,
          quantity: item.quantity,
          price: item.productable.price
        )
        item.update(order: @order)
      end

      current_cart.cart_items.destroy_all
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
