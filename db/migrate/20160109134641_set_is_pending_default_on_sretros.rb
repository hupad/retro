class SetIsPendingDefaultOnSretros < ActiveRecord::Migration
  def change
  	change_column :sretros, :is_pending, :integer, default: 1
  end
end
