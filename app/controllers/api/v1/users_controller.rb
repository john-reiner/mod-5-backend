module Api
    module V1
        class UsersController < ApplicationController
            def index
                users = User.all
                render json: users.to_json(:include => {
                    :goals => {:only => [:goal_name, :goal_description, :date,], include: [:tasks, :goal_resources]},
                }, except: [:created_at, :updated_at])
            end

            def show
                user = User.find_by(id: params[:id])
                render json: user.to_json(:include => {
                    :goals => {:only => [:goal_name, :goal_description, :date,], include: [:tasks, :goal_resources]},
                }, except: [:created_at, :updated_at])
            end

            def create
                user = User.new(user_params)
                render json: user, except: [:create_at, :update_at]
            end

            def destroy
                user = User.find(params[:id])
                user.destroy
                render json: {status: 'SUCCESS', message: 'Deleted user', data:user},status: :ok
            end

            def update
                user = User.find(params[:id])

            end

            private

            def user_params
                params.require(:user).permit(:username, :password)
            end 
        end
    end
end