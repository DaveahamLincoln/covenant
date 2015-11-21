class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
