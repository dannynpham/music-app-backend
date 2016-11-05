class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.integer :duration
      t.integer :album_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
