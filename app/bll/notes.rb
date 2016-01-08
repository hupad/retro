class Notes
	def get_list_of_notes options = {}
		notes_hash = Hash.new(0)
		@user = User.find(options[:user_id])
		@retros = @user.team.team_retros.where(sretro_id: options[:sretro_id])
		@notes = []
		@notes_names = []
		@retros.map { |e| @notes << Note.where(sretro_id: e.sretro_id).to_a }
		@notes.flatten!
		@notes.map { |e|  @notes_names << e.note_type.name }
		@notes_names.uniq!
		notes_hash["notes"] = @notes
		notes_hash["notes_name"] = @notes_names
		notes_hash
	end
end