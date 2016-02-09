class AddApi < Grape::API
    format :json
        
    resource :add do
            
        desc "Add Two Values."
        params do
            requires :first, type: Integer, desc: "First Value."
            requires :second, type: Integer, desc: "Second Value."
        end
        get '' do
            @add = params[:first] + params[:second]
        end
    end
end