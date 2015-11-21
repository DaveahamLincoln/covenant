class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      #t.integer :player_id
      #t.integer :squad_id
      t.string :name
      t.integer :role
      t.integer :class
      t.integer :prefix
      t.integer :affix
      t.integer :sigil_1
      t.integer :sigil_2
      t.integer :sigil_3
      t.integer :sigil_4
      t.integer :toughness
      t.integer :ac

      t.timestamps null: false
    end
  end
end
