class Coach < ApplicationRecord
    has_many :coach_students
    has_many :gym_coaches
    has_many :gyms, through: :gym_coaches
    has_many :class_sessions
    has_many :students, through: :coach_students
    has_secure_password
    has_secure_password :recovery_password, validations: false
end
