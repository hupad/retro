class Team < ActiveRecord::Base
	has_many :users
	has_many :team_retros
	has_many :sretros, through: :team_retros
end
