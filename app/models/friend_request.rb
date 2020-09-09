class FriendRequest < ApplicationRecord
    belongs_to :requestor, class_name: :Student
    belongs_to :receiver, class_name: :Student
    # validates :requestor_id, :receiver_id, uniqueness: true
end
