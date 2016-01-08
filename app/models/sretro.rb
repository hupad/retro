class Sretro < ActiveRecord::Base
	#belongs_to :user
	has_many :team_retros
	has_many :teams, through: :team_retro
	has_many :notes
	has_many :action_items
end
