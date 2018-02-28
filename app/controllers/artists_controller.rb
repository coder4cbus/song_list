class ArtistsController < ApplicationController
  def index
      @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create
    redirect_to artist_list_path
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

end
