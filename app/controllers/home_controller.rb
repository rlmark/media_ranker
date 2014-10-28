class HomeController < ApplicationController
  def index
    @movies = Movie.all.sort_by { |movie| -movie.rank }
    @albums = Album.all.sort_by { |album| -album.rank }
    @books = Book.all.sort_by { |book| -book.rank}
  end
end
