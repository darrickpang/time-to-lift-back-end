class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :age, :location, :student_dates, :friend_requests_as_receiver, :friend_requests_as_requestor
end
