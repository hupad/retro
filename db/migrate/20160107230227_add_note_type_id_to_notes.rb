class AddNoteTypeIdToNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :note_type, index: true, foreign_key: true
  end
end
