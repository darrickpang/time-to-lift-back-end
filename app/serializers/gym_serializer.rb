class GymSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :city, :zip_code, :class_sessions
end
