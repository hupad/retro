class AddIsPendingToSretro < ActiveRecord::Migration
  def change
    add_column :sretros, :is_pending, :boolean
  end
end
