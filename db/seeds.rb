# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#Mayor.create(name: 'Emanuel', city: cities.first)

class String
	def self.foo
	'a'*10
	end
end

6.times do |i|
	Project.create name: "Ironhack #{i}", description: String.foo
end