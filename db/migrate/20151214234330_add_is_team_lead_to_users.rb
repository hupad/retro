class AddIsTeamLeadToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_team_lead, :boolean
    add_index :users, :is_team_lead
  end
end
