class CreateCclasses < ActiveRecord::Migration
  def change
    create_table :cclasses do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
