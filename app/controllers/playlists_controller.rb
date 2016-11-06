class PlaylistsController < ApplicationController
  def index
    @playlists = User.first.playlists
    render json: @playlists
  end
end
