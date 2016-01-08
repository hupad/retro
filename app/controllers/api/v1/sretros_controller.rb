class Api::V1::SretrosController < ApplicationController
	
	def index
		@user = User.find(retro_params[:user_id])
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

 	private

    def retro_params
       params.permit(:user_id)
    end
end