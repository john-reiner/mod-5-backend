module Api
    module V1
        class TasksController < ApplicationController
            def index
                tasks = Task.all
                render json: { status: 'SUCCESS', message:'Loaded articles', data:tasks},status: :ok
            end
        end
    end
end


# class TasksController < ApplicationController
# end
