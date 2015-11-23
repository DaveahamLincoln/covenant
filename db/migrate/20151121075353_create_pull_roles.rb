class CreatePullRoles < ActiveRecord::Migration
  def change
    create_table :pull_roles do |t|
      t.integer :pull_id 
      t.integer :encounter_id
      t.integer :leader_id
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
