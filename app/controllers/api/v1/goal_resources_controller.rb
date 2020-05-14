module Api
    module V1
        class GoalResourcesController < ApplicationController
            def index
                goal_resources = GoalResource.all
                render json: { status: 'SUCCESS', message:'Loaded articles', data:goal_resources},status: :ok
            end
        end
    end
end



# class GoalResourcesController < ApplicationController
# end
