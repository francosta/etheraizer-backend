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
        if project_params["image"] == ""
            project = Project.new(title: project_params["title"], description: project_params["description"], goal: project_params["goal"], user_id: project_params["user_id"], status: project_params["status"], image: "https://github.com/francosta/etheraizer-frontend/raw/development/public/%CE%9Etheraizer%20Logo.png")
        else
            project = Project.new(project_params)
        end
        if project.save
            render json: project
        else
            render json: {error: 'Project could not be created'}, status: 400
        end
    end

    def update
        project = Project.find_by id: params[:id]
        project.update(project_params)
        render json: project 
    end

    private

    def project_params 
        params.permit(:id, :title, :description, :goal, :user_id, :blockchain_address, :status, :progress, :image)
    end

end

