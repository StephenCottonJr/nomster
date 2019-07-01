class PlacesController < ApplicationController

  def index
   # @places = Place.paginate(page: params[:page])
   @places = Place.order(:name).page(params[:page])
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    # if @place.invalid?
      # flash[:error] = '<strong> Could not save </strong>'
    # end
    redirect_to root_path
  end
  # Place.Create = method which sends data to database


private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
    # place_params = method which asks / collects info from user

end

