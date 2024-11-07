class ExercisesController < ApplicationController
  def index
    @exercies = Exercise.all
    render :index
  end
end
