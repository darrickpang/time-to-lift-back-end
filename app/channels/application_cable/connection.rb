module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_student
 
    def connect
      self.current_student = find_verified_student
    end
 
    private
      def find_verified_student
        if verified_student = Student.find_by(id: cookies.encrypted[:student_id])
          verified_student
        else
          reject_unauthorized_connection
        end
      end
  end
end
