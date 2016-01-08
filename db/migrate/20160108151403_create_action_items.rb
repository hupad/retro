class CreateActionItems < ActiveRecord::Migration
  def change
    create_table :action_items do |t|
      t.string :description
      t.references :sretro, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
