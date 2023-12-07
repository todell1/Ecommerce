class GpusController < ApplicationController
    def index
        @gpus = Gpu.all
        render :index
    end

    def show
        @gpu = Gpu.find(params[:id])
        render :show
    end
end
