class CoolersController < ApplicationController
    def index
        @coolers = Cooler.all
        render :index
    end

    def show
        @cooler = Cooler.find(params[:id])
        render :show
    end
end
