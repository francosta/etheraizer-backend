class UsersController < ApplicationController

    def index
        users = User.all
        # render json: UserSerializer.new(users).to_serialized_hash
        render json: users, except: [:password_digest, :updated_at, :created_at], include: [:created_projects, :deployed_projects, :funded_projects]
    end

    def show
        user = User.find_by(id: params[:id])
        # render json: UserSerializer.new(user).to_serialized_hash
        render json: user, except: [:updated_at, :created_at], include: [:created_projects, :deployed_projects, :funded_projects]
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        user = User.find(id: params[:id])
        user.update(user_params)
        render json: user 
    end

    def login
        user = User.find_by(email: user_params[:email])
        if user && user.authenticate(params[:password])
            render json: {username: user.email, token: issue_token({id: user.id})}
        else
            render json: {error: 'Invalid user/password combination.'}, status: 401
        end
    end

    def validate
        user = current_user
        if user
            render json: {username: user.email, token: issue_token({id: user.id})}
        else
            render json: {error: 'User not found'}, status: 404
        end
    end

    def user_data
        user = current_user
        if user
            render json: user, except: [:password_digest, :updated_at, :created_at], include: [:created_projects, :deployed_projects, :funded_projects]
        else
            render json: {error: 'Invalid token'}, status: 404
        end
    end

    private

    def user_params 
        params.permit(:id, :name, :email, :password, :profile_picture)
    end

end
