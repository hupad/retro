class Note < ActiveRecord::Base
  belongs_to :user
  #belongs_to :sretro
  belongs_to :note_type

  searchkick word_start: [:notes]
end
