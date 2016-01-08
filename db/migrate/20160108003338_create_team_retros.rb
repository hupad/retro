class CreateTeamRetros < ActiveRecord::Migration
  def change
    create_table :team_retros do |t|
      t.references :team, index: true, foreign_key: true
      t.references :sretro, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
