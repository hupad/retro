class AddSretroIdFromNote < ActiveRecord::Migration
  def change
    add_reference :notes, :sretro, index: true, foreign_key: true
  end
end
