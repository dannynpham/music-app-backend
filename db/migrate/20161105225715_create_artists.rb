class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name, unique: true

      t.timestamps
    end
  end
end
