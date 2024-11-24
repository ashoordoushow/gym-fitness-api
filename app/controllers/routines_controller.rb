class RoutinesController < ApplicationController
  def index
    @routines = Routine.where(user_id: current_user.id)
    render :index
  end
  
  def create
    @routine = Routine.create(
      user_id: current_user.id,
      exercise_id: params[:exercise_id],
      reps: params[:reps],
      sets: params[:sets],
    )
    render :show
  end

  def update
    @routine = Routine.find_by(id: params[:id])
    @routine.update(
      reps: params[:reps] || @routine.reps,
      sets: params[:sets] || @routine.sets,      
    )
    render :show
  end

  def destroy
    @routine = current_user.routines.find_by(id: params[:id]) # Ensure it belongs to the user
  
    def destroy
      @routine = current_user.routines.find_by(id: params[:id]) # Ensure it belongs to the user
    
      if @routine
        if @routine.destroy
          render json: { message: "Exercise removed" }, status: :ok
        else
          render json: { error: "Failed to remove exercise" }, status: :unprocessable_entity
        end
      else
        render json: { error: "Routine not found" }, status: :not_found
      end
    end
  end    
end





