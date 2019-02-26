class StudentsController < ApplicationController
  before_action :find_student, except: [:index, :new, :create]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    if @student.update_attributes(params[:student])
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    if @student.destroy
      redirect_to @students_path
    else
      redirect_to @students_path
    end
  end

  private

    def find_student
      @student = Student.find(params[:id])
    end

end
