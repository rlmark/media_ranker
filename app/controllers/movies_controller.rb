class MoviesController < ApplicationController
  def index
    @movies = Movie.all.sort_by {|movie| -movie.rank}
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if params[:movie][:upvote]
      @movie.rank += 1
    end
    if @movie.update(params.require(:movie).permit(:title, :description, :director))
      redirect_to movie_path(@movie.id)
    else
      render :new
    end
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :description, :director))
    @movie.rank = 0
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end
end
