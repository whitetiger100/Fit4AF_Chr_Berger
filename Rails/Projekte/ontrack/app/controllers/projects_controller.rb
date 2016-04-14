class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:notice] = "Successful saved!"
			redirect_to root_path
		else
		render :new
		end
	end

	def edit
	end

	def 

	def update
		@project.update(project_params)
		if @project.save
			redirect_to projects_url, notice: "Edit successful!"
		else
			render :edit
		end
	end

	def destroy
		@project.destroy
		redirect_to projects_url, alert: "Project deleted!"
	end

	private
		def project_params
			params.require(:project).permit(:title, :description, :start_date)
		end

		def set_project
			@project = Project.find(params[:id])
		end
end