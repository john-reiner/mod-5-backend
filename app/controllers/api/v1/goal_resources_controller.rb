module Api
    module V1
        class GoalResourcesController < ApplicationController
            def index
                goal_resources = GoalResource.all
                render json: goal_resources, except: [:created_at, :updated_at], include: [:goal]
            end

            def show
                goal_resource = GoalResource.find(params[:id])
                render json: goal_resource, except: [:created_at, :updated_at], include: [:goal]
            end

            def create
                goal_resource = GoalResource.new(goal_resource_params)
                render json: goal_resource, except: [:create_at, :update_at]
            end

            private

            def goal_resource_params
                params.require(:goal_resource).permit(:goal_id, :name, :description, :url)
            end 
        end
    end
end



# class GoalResourcesController < ApplicationController
# end
