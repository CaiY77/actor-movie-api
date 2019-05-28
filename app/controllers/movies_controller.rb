class MoviesController < ApplicationController

  def index
    @actor = Actor.find(params[:actor_id])
    @movies = @actor.movies
    render json: @movies, include: :actors, status: :ok
  end

  def show
    @actor = Actor.find(params[:actor_id])
    @movie = Movie.find(params[:id])

    if @actor.movies.include?(@movie)
          render json: @movie, include: :actors, status: :ok
    else
          render json: {message: 'This Actor was not in the Movie'}, status: :ok
    end

  end

end
