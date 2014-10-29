class BooksController < ApplicationController
  def index
    @books = Book.all.sort_by {|book| -book.rank}
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if params[:book][:upvote]
      @book.rank +=1
    end
    if @book.update(params.require(:book).permit(:title, :price, :description))
      redirect_to book_path(@book.id)
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
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
end
