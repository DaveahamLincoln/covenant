class CreatePulls < ActiveRecord::Migration
  def change
    create_table :pulls do |t|
      t.string :name
      t.string :description
      t.integer :encounter_id
      t.integer :leader_id
      t.string :result
      t.string :comments

      t.timestamps null: false
    end
  end
end
