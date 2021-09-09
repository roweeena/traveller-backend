class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all
    if @checklists
       render json: {
       checklists: @checklists
    }
  else
      render json: {
      status: 500,
      error: ['No checklist found']
  }
 end

  end

  def create
    # @checklist = Checklist.create :todoList => params[:todoList][0][:name]
    @user = User.find_by :uid => params[:uid]
    @trip = @user.trips.last
    params[:todoList].each do |t|
      @trip.checklists << Checklist.create(:todoList => t[:name])
    end
    if @trip.checklists.any?
       render json: {
       checklist: @trip.checklists,
       id: @trip.id
    }
  else
      render json: {
      status: 500,
      error: ['No checklist found']
  }
 end
  end

  def show
    @checklist = Checklist.find (params[:id])
    if @checklist
       render json: {
       checklist: @checklist
    }
    else
       render json: {
       status: 500,
       errors: ['Checklist not found']
     }
    end
  end

  def update
    checklist = Checklist.find params[:id]
    checklist.update checklist_params
  end

  def destroy
    checklist = Checklist.find params[:id]
    checklist.destroy
  end

  private
  def checklist_params
    params.require(:todoList).permit(:todoList, :user_id, :trip_id)
  end

end
