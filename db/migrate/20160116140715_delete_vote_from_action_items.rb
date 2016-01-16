class DeleteVoteFromActionItems < ActiveRecord::Migration
  def change
  	remove_column :action_items, :vote
  end
end
