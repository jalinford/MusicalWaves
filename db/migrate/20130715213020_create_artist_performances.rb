class CreateArtistPerformances < ActiveRecord::Migration
  def change
    create_table :artist_performances do |t|
      t.integer :artist_id
      t.integer :program_id

      t.timestamps
    end
  end
end
