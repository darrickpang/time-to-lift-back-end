class ClassSessionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :duration
end
