module Api
    module V1
        class TasksController < ApplicationController
            def index
                tasks = Task.all
                render json: tasks, except: [:created_at, :updated_at]
            end
            
            def show
                task = Task.find(params[:id])
                render json: task, except: [:created_at, :updated_at]
            end

            def create
                task = Task.new(task_params)
                render json: task, except: [:create_at, :update_at]
            end

            private

            def task_params
                params.require(:task).permit(:goal_id, :name, :description)
            end 
            
        end
    end
end


# class TasksController < ApplicationController
# end
