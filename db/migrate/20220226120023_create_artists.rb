class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artist do |t|
      t.string :artist
      t.timestamps
    end
  end
end
