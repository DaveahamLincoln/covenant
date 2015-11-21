class AddPullRoleIdToEncounterCharacterRefs < ActiveRecord::Migration
  def change
    add_column :encounter_character_refs, :pull_role_id, :integer
  end
end
