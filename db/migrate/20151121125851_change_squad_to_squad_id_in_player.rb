class ChangeSquadToSquadIdInPlayer < ActiveRecord::Migration
  def change
    rename_column :players, :squad, :squad_id
  end
end
