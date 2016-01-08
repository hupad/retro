class RemoveNoteIdFromSretro < ActiveRecord::Migration
  def change
  	remove_reference :sretros, :note, index: true, foreign_key: true
  end
end
