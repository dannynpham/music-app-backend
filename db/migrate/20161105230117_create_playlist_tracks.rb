class CreatePlaylistTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :playlist_tracks, :id => false do |t|
      t.belongs_to :playlist, foreign_key: true
      t.belongs_to :track, foreign_key: true

      t.timestamps
    end
  end
end
