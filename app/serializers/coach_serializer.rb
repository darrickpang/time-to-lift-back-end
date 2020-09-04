class CoachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :age, :location
end
