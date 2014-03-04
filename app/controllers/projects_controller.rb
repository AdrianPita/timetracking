class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
		#projects = Projects.limit(10).order('created_at DESC')
	end
end
