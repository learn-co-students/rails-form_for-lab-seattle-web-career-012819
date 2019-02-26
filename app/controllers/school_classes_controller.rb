class SchoolClassesController < ApplicationController
  def new
    # Implicit render
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create school_class_params
    redirect_to school_class_path @school_class
  end

  def show
    # Implicit render
    @school_class = SchoolClass.find params[:id]
  end

  def edit
    # Implicit render
    @school_class = SchoolClass.find params[:id]
  end

  def update
    @school_class = SchoolClass.find params[:id]
    @school_class.update school_class_params
    redirect_to school_class_path @school_class
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end