class BooksController < ApplicationController
  def index
    @books = Book.all.sort_by {|movie| -movie.rank}
  end

  def show
  end

  def edit
  end

  def update
    @book = Book.find(params[:id])
    @book.rank += 1
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
  end

  def create
  end

  def destroy
  end
end
