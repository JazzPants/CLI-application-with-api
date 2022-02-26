class CreateAlbums < ActiveRecord::Migration[4.2]
    def change
      create_table :albums do |t|
        t.string :name
        t.integer :playlist_id
        t.integer :artist_id
    end
  end