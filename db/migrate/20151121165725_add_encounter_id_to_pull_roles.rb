class AddEncounterIdToPullRoles < ActiveRecord::Migration
  def change
     add_column :pull_roles, :encounter_id, :integer
  end
end
