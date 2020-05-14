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
                goal = Goal.find(params[:id])
                render json: goal, except: [:created_at, :updated_at], include: [:tasks]
            end

            def create
                goal = Goal.new(goal_params)
                render json: goal, except: [:create_at, :update_at]
            end

            private

            def goal_params
                params.require(:goal).permit(:user_id, :goal_name, :goal_description, :date)
            end 
        end
    end
end


# class GoalsController < ApplicationController
# end
