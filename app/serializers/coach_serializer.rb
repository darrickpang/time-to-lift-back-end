class CoachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :age, :location, :students, :class_sessions, :gyms
end
