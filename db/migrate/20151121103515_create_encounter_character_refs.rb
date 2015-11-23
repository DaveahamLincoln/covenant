class CreateEncounterCharacterRefs < ActiveRecord::Migration
  def change
    create_table :encounter_character_refs do |t|
      t.integer :pull_role_id
      t.integer :encounter_id
      t.integer :character_id
      t.integer :leader_id

      t.timestamps null: false
    end
  end
end