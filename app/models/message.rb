class Message < ApplicationRecord
    belongs_to :conversation
    belongs_to :sender, class_name: :Student, foreign_key: 'sender_id'

    validates_presence_of :content
end
