module Admin
  class PlacesController < Admin::ApplicationController
    before_action :set_place, only: [:show, :edit, :update, :destroy]

    respond_to :json

    def index
      @places = Place.all
      @geojson = Array.new

      @places.each do |place|
        @geojson << {
          type: 'Feature',
          geometry: {
            type: 'Point',
            coordinates: [place.longitude, place.latitude]
          },
          properties: {
            name: place.name,
            rate: place.rate,
            :'marker-color' => '#00607d',
            :'marker-symbol' => 'circle',
            :'marker-size' => 'medium'
          }
        }
      end

      respond_to do |format|
        format.html
        format.json { render json: @geojson }  # respond with the created JSON object
      end
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
