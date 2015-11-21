class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :rank
      t.integer :rxp
      t.integer :squad

      t.timestamps null: false
    end
  end
end
