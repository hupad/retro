class AddUserIdToSretro < ActiveRecord::Migration
  def change
    add_column :sretros, :user_id, :integer
  end
end
