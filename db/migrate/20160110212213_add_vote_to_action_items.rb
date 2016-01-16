class AddVoteToActionItems < ActiveRecord::Migration
  def change
    add_column :action_items, :vote, :integer
  end
end
