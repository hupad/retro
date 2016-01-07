class ModifyTeamIdOnUsers < ActiveRecord::Migration
  def change
  	change_column_null :users, :team_id, false, 0 #setting defaults to 0
  end
end
