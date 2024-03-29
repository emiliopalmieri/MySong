class CreateSongArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :song_artists do |t|
      t.references :song, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
