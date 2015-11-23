class CreateCharacterPullRoleRefs < ActiveRecord::Migration
  def change
    create_table :character_pull_role_refs do |t|
      t.integer :pull_role_id
      t.integer :character_id
      t.integer :leader_id

      t.timestamps null: false
    end
  end
end
