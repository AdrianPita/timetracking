class Project < ActiveRecord::Base

	def self.iron_find(id_projects)
		#Otra forma para implementar a nivel de clase un metodo estatico
		#find(id_projects)
		where(id: id_projects).first
	end
end
