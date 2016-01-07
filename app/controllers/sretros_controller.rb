class SretrosController < ApplicationController
	before_action :authenticate_user!
	
	def new
		@sretro = Sretro.new
	end

	def show
		
	end

	def index
		@sretros = Sretro.all
	end

	def create
		@sretro = current_user.sretros.build(sretro_params)
		@sretro.team_id = current_user.team_id

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
		params.require(:sretro).permit(:title, :style)
	end
end