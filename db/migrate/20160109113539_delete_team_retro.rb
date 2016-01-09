class DeleteTeamRetro < ActiveRecord::Migration
  def change
  	drop_table :team_retros
  end
end
