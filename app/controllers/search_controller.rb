class SearchController < ApplicationController
	def notes
		@notes = Note.search params[:search][:query], fields: [{notes: :word_start}]
	end
end
