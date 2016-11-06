class Track < ApplicationRecord
  has_many :genres, through: :track_genres
  has_many :track_genres
  has_many :playlist_tracks
  has_many :playlists, through: :playlist_tracks
  belongs_to :album
end
