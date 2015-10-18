module Admin
  class PlacesController < ApplicationController
    before_action :set_place, only: [:show, :edit, :update, :destroy]

    def index
      @places = Place.all
      # @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      #   marker.lat place.latitude
      #   marker.lng place.longitude
      # end

      respond_with(@places)
    end

    def show
      respond_with(@place)
    end

    def new
      @place = Place.new
      respond_with(@place)
    end

    def edit
    end

    def create
      @place = Place.new(place_params)
      @place.save
      respond_with(@place)
    end

    def update
      @place.update(place_params)
      respond_with(@place)
    end

    def destroy
      @place.destroy
      respond_with(@place)
    end

    private
    def set_place
      @place = Place.find(params[:id])
    end

    def place_params
      params.require(:place).permit(:user_id, :latitude, :longitude, :rate)
    end
  end
end
