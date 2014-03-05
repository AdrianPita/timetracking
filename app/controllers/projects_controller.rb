class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
		#projects = Projects.limit(10).order('created_at DESC')
		if @projects.empty?
			render 'no_file'
		end
	end

	def show
		
		@projects = Project.find params[:id]
		
	end
end
