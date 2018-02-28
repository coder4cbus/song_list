class SongsController < ApplicationController
  def list
    @songs = Song.all
  end

  def new
    @song = Song.new
    artist_collection
  end

    def create
      @song = Song.create(songs_params)
      if @song.persisted?
      redirect_to song_list_path
      else
        artist_collection
        render 'new'
      end
    end

    def edit
      @song = Song.find(params["id"])
      artist_collection
      render 'new'
    end

    def update
      @song = Song.find(params["id"])
      if @song.update(songs_params)
      redirect_to song_list_path
      else
      artist_collection
      render 'new'
    end
  end

    def destroy
      song = Song.find(params["id"])
      song.destroy
      redirect_to song_list_path
    end

  private

  def artist_collection
    @artists = Artist.all.map { |artist| [artist.name, artist.id] } 
  end

  def songs_params
    params.require(:song).permit(:name, :duration, :artist_id)
  end

end
