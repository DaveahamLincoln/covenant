class AddScopingKeysInPreparationForDeviseHackjob < ActiveRecord::Migration
  def change
    #OK, so this is going to make it easy to basically create a separate 'instance' of the app 
    #for each user.  To start, everything is just going to be given a leader_id.
    #
    #Players will create characters, which we'll populate with the API
    #Once they have a character, they can ask to join a squad/leaders can ask to add them to squads
    #
    #Eventually sutff like sigils and armor types will be handled by the API.  
    #For now, anyone can edit them, so don't be a dick.
    
    add_column :characters, :leader_id, :integer
    
    add_column :squads, :leader_id, :integer
    
    add_column :pulls, :leader_id, :integer
    
    add_column :pull_roles, :leader_id, :integer
    
    add_column :encounters, :leader_id, :integer
    
    add_column :roles, :leader_id, :integer
    
    add_column :ranks, :leader_id, :integer
    
    add_column :character_pull_role_refs, :leader_id, :integer
    
    add_column :encounter_character_refs, :leader_id, :integer
  end
end
