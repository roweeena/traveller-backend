class TripsController < ApplicationController
  def index
    @trips = Trip.all
    if @trips
       render json: {
       trips: @trips
    }
  else
      render json: {
      status: 500,
      error: ['No trip found']
  }
 end

  end

  def create
    @trip = Trip.create trip_params
    @user = User.find_by :uid => params[:uid]
    if @trip
      @user.trips << @trip
       render json: {
       trip: @trip
    }
  else
      render json: {
      status: 500,
      error: ['No trip found']
  }
 end
  end

  def show
    @trip = Trip.find (params[:id])
    if @trip
       render json: @trip, include: [:checklists, :user]
     else
       render json: {
       status: 500,
       errors: ['Account not found']
     }
    end
  end

  def update
    trip = Trip.find params[:id]
    trip.update trip_params
  end

  def destroy
    trip = Trip.find params[:id]
    trip.destroy
  end

  private
  def trip_params
    params.require(:trip).permit(:start, :end, :location, :user_id)
  end


end
