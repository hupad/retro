class AddVoteToNotes < ActiveRecord::Migration
  def change
  	add_column :notes, :vote, :integer, default: false
  end
end
