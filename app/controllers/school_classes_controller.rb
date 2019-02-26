require 'pry'
class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    # byebug
    # binding.pry
    @school_class = SchoolClass.create!(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end
end