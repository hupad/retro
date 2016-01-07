class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :sretro, index: true, foreign_key: true
      t.string :notes
      t.integer :notes_type

      t.timestamps null: false
    end
  end
end
