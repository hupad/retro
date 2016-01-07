class CreateRetroNotes < ActiveRecord::Migration
  def change
    create_table :retro_notes do |t|
      t.text :what_went_well
      t.text :what_did_not_go_well
      t.string :improvement_areas

      t.timestamps null: false
    end
  end
end
