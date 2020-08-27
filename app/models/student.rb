class Student < ApplicationRecord
    has_many :class_lists 
    has_many :coach_students
    
    has_many :coaches, through: :coach_students
    has_many :class_sessions, through: :class_lists

    has_and_belongs_to_many :friends,
        class_name: "User", 
        join_table:  :friends, 
        foreign_key: :user_id, 
        association_foreign_key: :friend_user_id
end
