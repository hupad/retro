class NotesControllerController < ApplicationController
	def new
		@retro_note = RetroNote.new
		@sretro = Sretro.find(params[:sretro_id])
	end


	def create
		@retro_note = @retro_note.create(notes_params)
		redirect_to @retro_note
	end

	private

	def notes_params
		params.require(:retro_note).permit(:sretro_id, :what_went_well, :what_did_not_go_well, :improvement_areas)
	end
end
