class NotesController < ApplicationController
	before_filter :get_retro_by_id

	def new
		@note = Note.new
	end

	def index
		@retros = current_user.team.team_retros.where(sretro_id: params[:sretro_id])
		@notes = []
		@notes_names = []
		@retros.map { |e| @notes << Note.where(sretro_id: e.sretro_id).to_a }
		@notes.flatten!
		@notes.map { |e|  @notes_names << e.note_type.name }
		@notes_names.uniq!
		get_action_items
	end

	def create
		@note = current_user.notes.build(notes_params)
		@note.sretro_id = params[:sretro_id]
		
		if @note.save
			redirect_to sretro_note_path(@sretro, @note)
			flash[:notice] = "Your notes has been created successfull."
		else
			flash[:alert] = "Error creating a note. Try agian later"
		end
	end

	def edit
		@note = Note.find(params[:id])
	end

	def update
		@note = Note.find(params[:id])
		if @note.update(notes_params)
			redirect_to sretro_note_path(@sretro, @note)
			flash[:notice] = "Note has been updated successfully."
		else
			flash[:alert] = "Error creating a note. Try agian later"
		end
	end

	def destroy
    	@note = Note.find(params[:id])
    	@note.destroy
 
    	redirect_to sretro_notes_path(@sretro)
 	end
 	
 	def close
 		binding.pry
 		@sretro.is_pending = 0
 		if @sretro.save
 			redirect_to sretros_path
 		end
 	end

	def show
		@note = Note.find(params[:id])
	end

	private

	def notes_params
		params.require(:note).permit(:sretro_id, :notes, :note_type_id)
	end

	def get_retro_by_id
		@sretro = Sretro.find(params[:sretro_id])
	end

	def get_action_items
		@action_items = ActionItem.where(sretro_id: params[:sretro_id])
	end
end
