class Project < ActiveRecord::Base
	has_many :entries

	def self.iron_find(id_projects)
		#Otra forma para implementar a nivel de clase un metodo estatico
		#find(id_projects)
		where(id: id_projects).first
	end

	def self.last_created_projects(n)
		
		limit(n).order(created_at: :desc)
	end

	def self.total_hours_in_month (hours_per_project)

		from = 1.month
		to = 30.month 

		hours_per_project= Project.where(updated_at: from..to, hours:)

	end

end
