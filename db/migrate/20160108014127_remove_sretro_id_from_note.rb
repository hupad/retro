class RemoveSretroIdFromNote < ActiveRecord::Migration
  def change
  	remove_reference(:notes, :sretro, index: true, foreign_key: true)
  end
end
