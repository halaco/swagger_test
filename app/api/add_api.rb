require_relative './entities/result'

#module Entities
#    class Result < Grape::Entity
#        expose( :value, as: :sum, documentation: { type: Integer, desc: 'result.' })
#        expose(:first, documentation: { type: Integer, desc: 'first parameter.' })
#        expose(:second, documentation: { type: Integer, desc: 'second paramter.' })
#    end
#end

class AddApi < Grape::API
    format :json
        
    resource :add do
            
        desc "Add Two Values.", entity: Result
        api_desc 'Add Two Values' do
            detail 'More information will be described here'
            tags 'opration'
            response Result
        end
        params do
            requires :first, type: Integer, desc: "First Value."
            requires :second, type: Integer, desc: "Second Value."
        end
        get '' do
            sum = params[:first] + params[:second]
            result = { value: sum, first: params[:first], second: params[:second]}
            present result, with: Result
        end
    end

end