class CreatePlayerLeaderRefs < ActiveRecord::Migration
  def change
    create_table :player_leader_refs do |t|
      t.integer :player_id
      t.integer :leader_id

      t.timestamps null: false
    end
  end
end
