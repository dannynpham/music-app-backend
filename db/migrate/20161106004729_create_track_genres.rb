class CreateTrackGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :track_genres, :id => false do |t|
      t.belongs_to :track, foreign_key: true
      t.belongs_to :genre, foreign_key: true

      t.timestamps
    end
  end
end
