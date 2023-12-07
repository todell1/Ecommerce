class PsusController < ApplicationController
    def index
        @psus = Psu.all
        render :index
    end

    def show
        @psu = Psu.find(params[:id])
        render :show
    end
end
