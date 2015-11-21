class AddEncounterIdToPull < ActiveRecord::Migration
  def change
    add_column :pulls, :encounter_id, :integer
  end
end
