class ArtistsController < ApplicationController
  def artist
    @artist = User.first.playlists.first.tracks.first.artist
    render json: @artist
  end
end
