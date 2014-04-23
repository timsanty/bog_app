class BogController < ApplicationController
    def index
        @bogs = Bog.all
    	render :index
    end

    def new
        render :new
    end

    def create
    	new_bog = params.require(:bog).permit(:name, :description)
    	Bog.create(new_bog)
    	redirect_to "/bog"
    end


end