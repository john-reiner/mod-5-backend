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

                if goal_resource.save 
                    render json: {status: 'SUCCESS', message: 'Resource Created', data:goal_resource},status: :ok
                else 
                    render json: {status: 'ERROR', message: 'Resource NOT Created', data:goal_resource.errors},status: :unprocessable_entity
                end
            end

            private

            def goal_resource_params
                params.require(:goal_resource).permit(:goal_id, :name, :description, :url, :resource_file)
            end 
        end
    end
end



# class GoalResourcesController < ApplicationController
# end
