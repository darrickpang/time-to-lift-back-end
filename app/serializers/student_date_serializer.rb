class StudentDateSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :date, :class_name
end
