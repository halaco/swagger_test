module Entities
    class Result < Grape::Entity
        expose :value, as: 'sum', documentation: { type: 'integer', desc: 'result.' }
        expose :first, documentation: { type: 'integer', desc: 'first parameter.' }
        expose :second, documentation: { type: 'integer', desc: 'second paramter.' }
    end
end

class AddApi < Grape::API
    format :json
        
    resource :add do
            
        desc "Add Two Values.", entity: Entities::Result
        params do
            requires :first, type: Integer, desc: "First Value."
            requires :second, type: Integer, desc: "Second Value."
        end
        get '' do
            sum = params[:first] + params[:second]
            result = { value: sum, first: params[:first], second: params[:second]}
            present result, with: Entities::Result
        end
    end
    
    add_swagger_documentation
end