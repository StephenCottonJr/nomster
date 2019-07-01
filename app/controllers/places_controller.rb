class PlacesController < ApplicationController

  def index
   # @places = Place.paginate(page: params[:page])
   @places = Place.order(:name).page(params[:page])
  end

  def new
    @place = Place.new
  end


end

