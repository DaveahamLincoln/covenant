class AddPullIdToPullRole < ActiveRecord::Migration
  def change
    add_column :pull_roles, :pull_id, :integer
  end
end
