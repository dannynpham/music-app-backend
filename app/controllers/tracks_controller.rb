class TracksController < ApplicationController
  def index
    @tracks = User.first.playlists.first.tracks
    render json: @tracks
  end
end
