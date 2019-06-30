class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: ProjectSerializer.new(projects).to_serialized_hash
    end

    def show
        project = Project.find_by(id: params[:id])
        render json: ProjectSerializer.new(project).to_serialized_hash
    end

    def destroy
        project = Project.find_by(id: params[:id])
        project.destroy
    end

    def create
        byebug
        project = Project.new(project_params)
        if project.save
            render json: project
        else
            render json: {error: 'Project could not be created'}, status: 400
        end
    end

    def update
        project = Project.find(id: params[:id])
        project.update(project_params)
        render json: project 
    end

    private

    def project_params 
        params.permit(:id, :title, :description, :goal)
    end

end

