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

    
    def index
        @all = Band.all
    end

end

