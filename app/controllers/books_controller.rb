class BooksController < ApplicationController
  def index
    @books = Book.all.sort_by {|book| -book.rank}
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
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :description, :author))
    @book.rank = 0
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def destroy
  end
end
