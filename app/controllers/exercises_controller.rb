class ExercisesController < ApplicationController
  def index
    p "current_user"
    p current_user
    p "current_user"
    @exercises = Exercise.all
    render :index
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(
      name: params[:name] || @exercise.name,
      description: params[:description] || @exercise.description,
      image_url: params[:image_url] || @exercise.image_url,
      video_url: params[:video_url] || @exercise.video_url,
      category: params[:category] || @exercise.category,
    )
    render :show
  end

  def create
    @exercise = Exercise.create(
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      video_url: params[:video_url],
    )
    render :show
  end
end
