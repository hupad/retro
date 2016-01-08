class AddNoteIdToSretro < ActiveRecord::Migration
  def change
    add_reference :sretros, :note, index: true, foreign_key: true
  end
end
