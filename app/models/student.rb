class Student < ApplicationRecord
    has_many :class_lists 
    has_many :coach_students
    has_secure_password
    has_secure_password :recovery_password, validations: false
    has_many :student_dates
    has_and_belongs_to_many :conversations, dependent: :destroy
    
    has_many :coaches, through: :coach_students
    has_many :class_sessions, through: :class_lists

    has_many :friend_requests_as_requestor,
        foreign_key: :requestor_id,
        class_name: :FriendRequest 

    has_many :friend_requests_as_receiver,
        foreign_key: :receiver_id,
        class_name: :FriendRequest

    validates :name, uniqueness: true
    validates :name, :age, :location, presence: true
    validate :adult_age 

    def adult_age
        if age < 18
            errors.add(:age, 'You need to be 18 before you can sign up.')
        end
    end
end
