class MoviesController < ApplicationController
  def index
    @movies = Movie.all.sort_by {|movie| -movie.rank}
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.rank += 1
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def create
  end

  def destroy
  end
end
