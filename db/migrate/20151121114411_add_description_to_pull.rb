class AddDescriptionToPull < ActiveRecord::Migration
  def change
    add_column :pulls, :description, :string
  end
end
