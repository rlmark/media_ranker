class AlbumsController < ApplicationController
  def index
    @albums = Album.all.sort_by{|album| -album.rank }
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if params[:album][:upvote]
      @album.rank += 1
    end
    if @album.update(params.require(:album).permit(:title, :artist, :description))
      redirect_to album_path(@album.id)
    else
      render :new
    end
  end

  def new
    @album = Album.new #why do this??? ask.
  end

  def create
    @album = Album.new(params.require(:album).permit(:title, :artist, :description))
    @album.rank = 0
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def destroy
  end
end
