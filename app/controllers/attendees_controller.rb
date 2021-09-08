class AttendeesController < ApplicationController

  def index
    @attendees = Attendee.all.order("created_at DESC")
  end

  def create
    @attendee = Attendee.create attendant_params
  end

  def show
    @attendee = Attendee.find params [:id]
  end

  def destroy
    attendee = Attendee.find params [:id];
    attendee.destroy
  end


  private
  def attendee_params
    params.require(:attendee).permit(:user_id, :trip_id)
  end

  end
