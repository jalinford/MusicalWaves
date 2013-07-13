class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.integer :program_id
      t.date :date
      t.string :time
      t.string :location
      t.integer :price
      t.string :tickets_link

      t.timestamps
    end
  end
end
