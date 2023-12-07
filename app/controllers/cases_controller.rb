class CasesController < ApplicationController

    def index
        @cases = Case.all
        render :index
    end

    def show
        @case = Case.find(params[:id])
        render :show
    end
end
