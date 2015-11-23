class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name
      t.integer :leader_id

      t.timestamps null: false
    end
  end
end
