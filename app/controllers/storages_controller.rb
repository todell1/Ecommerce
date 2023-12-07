class StoragesController < ApplicationController
    def index
        @storages = Storage.all
        render :index
    end

    def show
        @storage = Storage.find(params[:id])
        render :show
    end
end
