class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.update(first_name: params[:student_first_name], last_name: params[:student_last_name])
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    fname = params[:student][:first_name]
    lname = params[:student][:last_name]
    @student.update(first_name: fname, last_name: lname)
    redirect_to student_path(@student)
  end

  private

  def safe_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
