class Api::V1::SretrosController < ApplicationController
	  protect_from_forgery
      skip_before_action :verify_authenticity_token
	def index
		@user = User.find(user_params[:user_id])
		@team_retros = @user.team.team_retros
		@sretros = []
		@team_retros.map { |e| @sretros << e.sretro  }
		
		if @sretros
			render status: 200, json: {
				message: "Success",
				content: @sretros
			}
		else
			render status: 400, json: {
				message: "Error"
			}
		end
	end

  def create
	@user = User.find(user_params[:user_id])
    @sretro = Sretro.new(user_params)

    if @sretro.save
    		@team_retro = TeamRetro.create(team_id: @user.team.id, sretro_id: @sretro.id)
			render status: 200, json: {
				message: "Success",
				content: @sretro
			}
		else
			render status: 400, json: {
        message: @sretro.errors.full_messages.join(", "),
			}
		end
  end

 	private

    def user_params
      params.permit(:user_id,:title, :style, :team_id)
    end

    def sretro_params
      params.permit(:title, :style, :team_id)
    end
end
