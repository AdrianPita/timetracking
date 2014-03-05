class Project < ActiveRecord::Base
	has_many :entries

	validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format: {with: /\A[0-9a-zA-Z]*\z/} 

	def self.iron_find(id_projects)
		#Otra forma para implementar a nivel de clase un metodo estatico
		#find(id_projects)
		where(id: id_projects).first
	end

	def self.last_created_projects(n)
		
		limit(n).order(created_at: :desc)
	end

	def total_hours_in_month (month, year)

		from = Date.new year, month, 1
		to = from.end_of_month

		filtered_entries = entries.where(date: from..to) 

		total_hours = 0
		total_minutes = 0
		filtered_entries.each do |entry|
			total_hours += entry.hours
			total_minutes += entry.minutes
		end

		total_hours + (total_minutes/60)
	end

end
