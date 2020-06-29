class SightingsController < ApplicationController
    def index
        sighting = Sighting.all 
        render json: sighting
    end

    def show
      sighting = Sighting.find_by(id: params[:id])
      render json: sighting, include: [:bird, :location]
    end
end
