class LocationsController < ApplicationController

  def create
    @location = Location.create location_params
    render json: @location
  end

  def show
    @location = Location.find(params[:id])
    if @location
      render json: {
        location: @location
      }
    else
      render json:{
        status: 500,
        error: ['no users found']
      }
    end
  end

  def index
    @locations = Location.all
    if @locations
      render json: {
        location: @locations
      }
    else
      render json: {
        status: 500,
        error: ['no users found']
      }
    end
  end
end
