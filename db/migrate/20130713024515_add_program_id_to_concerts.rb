class AddProgramIdToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :program_id, :integer
  end
end
