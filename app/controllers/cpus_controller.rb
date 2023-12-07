class CpusController < ApplicationController
    def add_to_cart
        @cpu = Cpu.find(params[:id])
        quantity = params[:quantity].to_i
        cart = session[:cart] || {}
        cart_item = cart[@cpu.id.to_s] || { "quantity" => 0 }
        cart_item["quantity"] += quantity
        cart[@cpu.id.to_s] = cart_item
        session[:cart] = cart
        redirect_back fallback_location: root_path
    end
    def index
        @cpus = Cpu.all
        render :index
    end

    def show
        @cpu = Cpu.find(params[:id])
        render :show
    end
end
