class NotesController < ApplicationController
	def new
		@note = Note.new
		@sretro = Sretro.find(params[:sretro_id])
	end


	def create
		@note = @note.create(notes_params)
		redirect_to @note
	end

	private

	def notes_params
		params.require(:note).permit(:sretro_id, :what_went_well, :what_did_not_go_well, :improvement_areas)
	end
end
