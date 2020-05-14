module Api
    module V1
        class GoalsController < ApplicationController
            def index
                goals = Goal.all
                render json: { status: 'SUCCESS', message:'Loaded articles', data:goals},status: :ok
            end
        end
    end
end


# class GoalsController < ApplicationController
# end
