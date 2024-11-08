class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
    render :index
  end
  
  def create
    @routine = Routine.create(
      user_id: params[:user_id],
      exercise_id: params[:exercise_id],
      reps: params[:reps],
      sets: params[:sets],
    )
    render :show
  end
end
