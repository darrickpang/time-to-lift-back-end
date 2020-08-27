class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :age, :location, :class_sessions, :gyms
end
