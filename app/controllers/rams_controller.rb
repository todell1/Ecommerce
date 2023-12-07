class RamsController < ApplicationController
    def index
        @rams = Ram.all
        render :index
    end

    def show
        @ram = Ram.find(params[:id])
        render :show
    end
end
