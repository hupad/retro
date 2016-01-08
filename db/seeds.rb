# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

team_list = %w(HoneyBadgers 'CleanUp Crew' Perlfection Jasmines 'Goat Busters' Caralina)

team_list.each do |team_name|
  team = Team.find_by(name: team_name)

  if team
    puts "team already exists"
  else
    team = Team.new
    team.name = team_name
    team.save
  end
end

note_types = ["what went well", "what did not go well", "what can we do better"]

note_types.each do |note|
	NoteType.create(name: note)
end