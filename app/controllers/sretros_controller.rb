class SretrosController < ApplicationController
	before_action :authenticate_user!
	
	def new
		@sretro = Sretro.new
	end

	def show
		
	end

	def index
		@team = current_user.team
		@team_retros = @team.team_retros
		@sretros = []
		@team_retros.map { |e| @sretros << e.sretro  }
	end

	def create
		@user_team = current_user.team
		@sretro = Sretro.new(sretro_params)

		respond_to do |format|
			if @sretro.save
				@team_retro = TeamRetro.create(team_id: current_user.team.id, sretro_id: @sretro.id)
				format.html { redirect_to new_sretro_note_path(sretro_id: @sretro.id), notice: "Retro has been created"} 
			else
				format.html { render action: 'new'}
			end
		end
	end

	private

	def sretro_params
		params.require(:sretro).permit(:title, :style)
	end
end