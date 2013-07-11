class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :instrument
      t.string :picture
      t.text :bio

      t.timestamps
    end
  end
end
