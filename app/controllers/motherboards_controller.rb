class MotherboardsController < ApplicationController
    def index
        @motherboards = Motherboard.all
        render :index
    end

    def show
        @motherboard = Motherboard.find(params[:id])
        render :show
    end
end
