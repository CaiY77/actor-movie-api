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

end
