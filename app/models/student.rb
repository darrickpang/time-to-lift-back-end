class Student < ApplicationRecord
    has_many :class_lists 
    has_many :coach_students
    has_secure_password
    has_secure_password :recovery_password, validations: false
    has_many :student_dates
    
    has_many :coaches, through: :coach_students
    has_many :class_sessions, through: :class_lists

    has_and_belongs_to_many :friends,
        class_name: "Student", 
        join_table:  :friends, 
        foreign_key: :student_id, 
        association_foreign_key: :friend_student_id

    validates :name, uniqueness: true
    validates :name, :age, :location, presence: true
    validate :adult_age 

    def adult_age
        if age < 18
            errors.add(:age, 'You need to be 18 before you can sign up.')
        end
    end
end
