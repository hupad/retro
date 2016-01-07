class CreateSretros < ActiveRecord::Migration
  def change
    create_table :sretros do |t|
      t.string :title
      t.string :style

      t.timestamps null: false
    end
    add_index :sretros, :title
  end
end
