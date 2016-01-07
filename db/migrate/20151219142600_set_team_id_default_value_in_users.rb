class SetTeamIdDefaultValueInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :team_id, :integer, :default => 0
  end
end
