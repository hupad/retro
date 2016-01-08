class AddRetroIdToTeam < ActiveRecord::Migration
  def change
    add_reference :teams, :sretro, index: true, foreign_key: true
  end
end
