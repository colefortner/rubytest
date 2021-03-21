class AlbumsController < ApplicationController
    def index
        @albums = Album.all
    end

    def show
        @album = Album.where(id: params[:id]).first
        @album_songs = @album.songs
    end

    def create
        name = params[:album][:name]
        artist_name = params[:album][:artist_name]

        album = Album.create(name: name, artist_name: artist_name)

        redirect_to :albums
    end
end
