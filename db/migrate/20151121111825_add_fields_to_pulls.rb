class AddFieldsToPulls < ActiveRecord::Migration
  def change
    add_column :pulls, :name, :string
  end
end
