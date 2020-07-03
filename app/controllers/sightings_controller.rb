class SightingsController < ApplicationController
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting

    def show
        sighting = Sighting.find_by(id: params[:id])
        render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
      end
      
end
