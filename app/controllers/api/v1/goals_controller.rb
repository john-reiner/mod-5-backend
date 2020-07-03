module Api
    module V1
        class GoalsController < ApplicationController
            def index
                goals = Goal.all
                render json: goals.to_json(:include => {
                    :tasks => {:only => [:name, :description]},
                    :goal_resources => {:only => [:name, :description, :url]}
                }, except: [:created_at, :updated_at])
            end

            def show
                goal = Goal.find_by(id: params[:id])
                render json: goal.to_json(:include => {
                    :tasks => {:only => [:id, :name, :description]},
                    :goal_resources => {:only => [:name, :description, :url]}
                }, except: [:created_at, :updated_at])
            end

            def create

                goal = Goal.new(goal_params)

                if goal.save 
                    render json: {status: 'SUCCESS', message: 'Goal Created', data:goal},status: :ok
                else 
                    render json: {status: 'ERROR', message: 'Goal NOT Created', data:goal.errors},status: :unprocessable_entity
                end
            end

            def update
                goal = Goal.find(params[:id])

                if goal.update_attributes(goal_params)
                    render json: {status: 'SUCCESS', message: 'Goal Updated', data:goal},status: :ok
                else 
                    render json: {status: 'ERROR', message: 'Goal NOT Updated', data:task.errors},status: :unprocessable_entity
                end
            end

            private

            def goal_params
                params.require(:goal).permit(:user_id, :goal_name, :goal_description, :date, :is_complete, :red, :green, :blue)
            end 
        end
    end
end


# class GoalsController < ApplicationController
# end
