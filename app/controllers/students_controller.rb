class StudentsController < ApplicationController
    before_action :authorized, only: [:persist]
    def index
        students = Student.all 
        render json: students
    end 
    def new
        student = Student.new
    end

    def create 
        student = Student.create(student_params)
        if student.valid?
            token = encode_token({student_id: student.id})
            render json: {student: StudentSerializer.new(student), token: token}
        else
            render json: {error: 'cannot create'}
        end
    end

    def login
        student = Student.find_by(name: params[:name])
        if student && student.authenticate(params[:password])
            token = encode_token({student_id: student.id})
            render json: {student: StudentSerializer.new(student), token: token}
        else 
            render json: {error: 'Incorrect student or Password'}
        end
    end

    def persist
        token = encode_token({student_id: @student.id})
        render json: {student: StudentSerializer.new(@student), token: token}
    end

    # def self.adult_age
    #     Student.adult_age 
    # end

    def show
        student = Student.find(params[:id])
        render json: StudentSerializer.new(student)
    end

    def edit
        student = Student.find(params[:id])
    end

    def update 
        student = Student.find(params[:id])
        student.update(student_params)
    end

    def destroy 
        student = Student.find(params[:id]).destroy
    end 

    private
    def student_params
        params.permit(:name, :password, :age, :location)
    end
end