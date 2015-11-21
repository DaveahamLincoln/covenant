class AddPullSquadIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :squad_id, :integer
  end
end
