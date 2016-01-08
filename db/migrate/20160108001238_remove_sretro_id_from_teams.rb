class RemoveSretroIdFromTeams < ActiveRecord::Migration
  def change
  	remove_reference :teams, :sretro, index: true, foreign_key: trueend
