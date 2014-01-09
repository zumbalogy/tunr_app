class MusiciansController < ApplicationController
    def new 
    end

    def create
        @name = params[:name]
        redirect_to musicians_path
    end

    def index
        @all_musicians = Musician.all

    end

end



