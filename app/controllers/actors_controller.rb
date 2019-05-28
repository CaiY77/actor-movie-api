class ActorsController < ApplicationController

def index
  @movie = Movie.find(params[:movie_id])
  @actors = @movie.actors
  render json: @actors, include: :movies, status: :ok
end
def show
  @Actor = Actor.find(params[:id])
  render json: @Actor, include: :movies, status: :ok
end

def show
  @movie = Movie.find(params[:movie_id])
  @actor = Actor.find(params[:id])

  if @movie.actors.include?(@actor)
        render json: @actor, include: :movies, status: :ok
  else
        render json: {message: 'This Movie did not star this Actor'}, status: :ok
  end

end

end
