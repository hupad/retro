class SretrosController < ApplicationController
	before_action :authenticate_user!
	
	def new
		@sretro = Sretro.new
	end

	def show
		
	end

	def index
		@sretros = current_user.team.sretros
	end

	def create
		@user_team = current_user.team
		@sretro = Sretro.new(sretro_params)

		respond_to do |format|
			if @sretro.save
				format.html { redirect_to new_sretro_note_path(sretro_id: @sretro.id), notice: "Retro has been created"} 
			else
				format.html { render action: 'new'}
			end
		end
	end

	private

	def sretro_params
		params.require(:sretro).permit(:title, :style, :team_id)
	end
end
