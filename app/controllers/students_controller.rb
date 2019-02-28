class StudentsController < ApplicationController

    before_action :set_student, only:[:edit, :show]

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to @student
    end

    def show
       
    end

    def index
        @students = Student.all
    end

    def update
        set_student
        @student.update(student_params)
        redirect_to @student

    end

    def edit
        set_student
    end

    private
    def set_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end



end