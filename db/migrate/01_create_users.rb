class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :username
      t.timestamps
    end
  end
end

# create_join_table :playlist
# create_join_table :albums
