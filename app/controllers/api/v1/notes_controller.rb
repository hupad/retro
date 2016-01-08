class Api::V1::NotesController < ApplicationController
      protect_from_forgery
      skip_before_action :verify_authenticity_token
      
	def create
		@user = User.find(notes_params[:user_id])
		@note = @user.notes.build(notes_params)
		@note.sretro_id = params[:sretro_id]
		if @note.save
			render status: 200, json: {
				message: "Success",
				content: @note
			}
		else
			render status: 400, json: {
				message: "Error"
			}
		end
	end

	private

	def notes_params
		params.permit(:user_id, :notes, :note_type_id)
	end
end