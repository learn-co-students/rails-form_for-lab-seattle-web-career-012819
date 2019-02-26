class StudentsController < ApplicationController
  def new
    # Implicit render
    @student = Student.new
  end

  def create
    @student = Student.create student_params
    redirect_to student_path @student
  end

  def show
    # Implicit render
    @student = Student.find params[:id]
  end

  def edit
    # Implicit render
    @student = Student.find params[:id]
  end

  def update
    @student = Student.find params[:id]
    @student.update student_params
    redirect_to student_path @student
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end