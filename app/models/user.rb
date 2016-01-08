class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   belongs_to :team
   has_many :sretros, through: :team_retros
   has_many :notes
   
   validates :team_id, presence: true

end
