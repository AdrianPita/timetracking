class Project < ActiveRecord::Base

	def self.iron_find(id_projects)
		#Otra forma para implementar a nivel de clase un metodo estatico
		#find(id_projects)
		where(id: id_projects).first
	end

	def self.last_created_projects(n)
		
		limit(n).order(created_at: :desc)
	end
end
