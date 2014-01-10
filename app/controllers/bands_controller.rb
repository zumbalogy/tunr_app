class BandsController < ApplicationController
    def new
    end

    def create
        name = params[:name]
        band = Band.new
        band.name = name
        band.save

        redirect_to '/bands'
    end

    def show
        id = params[:id]
        @band = Band.find(id)
    end

    def edit
        id = params[:id]
        @band = Band.find(id)
    end

    def update
        band = Band.find(params[:id])
        band.name = params[:name]
        band.save

        redirect_to '/bands'
    end
    
    def index
        @all = Band.all
    end

end

