class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  # def new
  #   @movie = Movie.new
  # end

  # def create
  #   @movie = Movie.new
  #   @movie.save
  # end

  # def show
  #   @movie = Movie.find(params[:id])
  # end
end
