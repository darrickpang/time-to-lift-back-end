class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :age, :location, :student_dates
end
