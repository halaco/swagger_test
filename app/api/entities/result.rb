class Result < Grape::Entity
    expose :value, as: :sum, documentation: { type: Integer, desc: 'result.' }
    expose :first, documentation: { type: Integer, desc: 'first parameter.' }
    expose :second, documentation: { type: Integer, desc: 'second paramter.' }
end