class CreatePulls < ActiveRecord::Migration
  def change
    create_table :pulls do |t|
      #t.string :name
      #t.string :description
      t.string :result
      t.string :comments

      t.timestamps null: false
    end
  end
end
