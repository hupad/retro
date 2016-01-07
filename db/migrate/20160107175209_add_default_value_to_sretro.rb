class AddDefaultValueToSretro < ActiveRecord::Migration
  def change
  	change_column :sretros, :is_pending, :integer, default: 0
  end
end
