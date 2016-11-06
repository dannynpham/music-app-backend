class AlbumsController < ApplicationController
  def album
    @album = User.first.playlists.first.tracks.first.album
    render json: @album
  end
end
