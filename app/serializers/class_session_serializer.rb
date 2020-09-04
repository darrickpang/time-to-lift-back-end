class ClassSessionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :time, :duration, :date, :coach
end
