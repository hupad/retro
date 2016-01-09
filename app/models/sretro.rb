class Sretro < ActiveRecord::Base
	#belongs_to :user
	belongs_to :team
	has_many :notes
	has_many :action_items
end
