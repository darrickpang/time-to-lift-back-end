class Conversation < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many_and_belongs_to :students
end
