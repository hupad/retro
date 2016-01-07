class ModifyIsPendingInSretro < ActiveRecord::Migration
  def change
  	change_column_null :sretros, :is_pending, false, 1
  end
end
