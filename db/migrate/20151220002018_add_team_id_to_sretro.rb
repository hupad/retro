class AddTeamIdToSretro < ActiveRecord::Migration
  def change
    add_reference :sretros, :team, index: true, foreign_key: true
  end
end
