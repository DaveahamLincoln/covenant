class RenameClassToCclass < ActiveRecord::Migration
  def self.up
    rename_column :characters, :class, :cclass
  end 
  def self.down
    rename_column :characters, :class, :cclass
  end
end