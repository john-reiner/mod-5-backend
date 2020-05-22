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

                if task.save 
                    render json: {status: 'SUCCESS', message: 'Task Created', data:task},status: :ok
                else 
                    render json: {status: 'ERROR', message: 'Task NOT Created', data:task.errors},status: :unprocessable_entity
                end
            end

            def update
                task = Task.find(params[:id])

                if task.update_attributes(task_params)
                    render json: {status: 'SUCCESS', message: 'Task Updated', data:task},status: :ok
                else 
                    render json: {status: 'ERROR', message: 'Task NOT Updated', data:task.errors},status: :unprocessable_entity
                end
            end

            private

            def task_params
                params.require(:task).permit(:goal_id, :name, :description, :time)
            end 
            
        end
    end
end


# class TasksController < ApplicationController
# end
