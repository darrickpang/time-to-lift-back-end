class StudentDatesController < ApplicationController
    def index
        student_dates = StudentDate.all 
        render json: student_dates
    end 

    def new
        student_date = StudentDate.new
    end

    def create 
        student_date = StudentDate.create(student_date_params)
        render json: student_date
    end

    def show
        student_date = StudentDate.find(params[:id])
        render json: student_date
    end

    def edit
        student_date = StudentDate.find(params[:id])
    end

    def update 
        student_date = StudentDate.find(params[:id])
        student_date.update(student_date_params)
        render json: student_date
    end

    def destroy 
        student_date = StudentDate.find(params[:id]).destroy
    end 

    private
    def student_date_params
        params.require(:student_date).permit(:class_name, :date, :student_id)
    end
end
