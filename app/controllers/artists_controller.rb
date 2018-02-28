class ArtistsController < ApplicationController
  def index
      @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create
    Artist.create(artists_params)
    if @artist.persisted?
      redirect_to artists_path
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find(params["id"])
    redirect_to new_artist_path
  end

  def update
    @artist = Artist.find(params["id"])
  end

  def destroy
    artist = Artist.find(params["id"])
    artist.destroy
    redirect_to song_list_path
  end

  def artists_params
    params.require(:artist).permit(:song )
  end

end
