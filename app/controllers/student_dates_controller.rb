class StudentDatesController < ApplicationController
    def index
        student_dates = StudentDate.all 
        render json: student_dates
    end 
end
