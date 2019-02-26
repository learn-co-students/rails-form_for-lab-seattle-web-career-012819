class SchoolClassesController < ApplicationController
  before_action :get_class, except: [:index, :new, :create]

  def index
    @school_classes = SchoolClass.all
  end
  

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  private

  def get_class
    @school_class = SchoolClass.find(params[:id])
  end
end