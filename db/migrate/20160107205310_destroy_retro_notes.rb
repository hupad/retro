class DestroyRetroNotes < ActiveRecord::Migration
  def change
  	drop_table :retro_notes
  end
end
