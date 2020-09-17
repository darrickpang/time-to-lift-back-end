class RoomChannel < ApplicationCable::Channel 
    def subscribed
        if params[:room_id].present?
            stream_from("ChatRoom-#{(params[:room_id])}")
        end
    end

    def speak(data)
        sender = get_sender(data)
        room_id = data['room_id']
        message = data['message']

        conversation = get_conversation(room_id)

        conversation.students << sender unless conversation.students.include?(sender)
        Message.create!(
            conversation: conversation,
            sender: sender,
            content: message
        )
    end

    def get_conversation(room_code)
        Conversation.find_by(room_code: room_code)
    end

    def get_sender 
        Student.find_by(guid: id)
    end
end 