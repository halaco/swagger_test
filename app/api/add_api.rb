class AddApi < Grape::API
    format :json
        
    resource :add do
            
        desc "Add Two Values."
        params do
            requires :first, type: Integer, desc: "First Value."
            requires :second, type: Integer, desc: "Second Value."
        end
        get '' do
            sum = params[:first] + params[:second]
            { value: sum, first: params[:first], second: params[:second]}
        end
    end
    
    add_swagger_documentation
end