class StudentsController < ApplicationController

  def index
    @students = Student.all
    @student = Student.new
  end

  def new
  end

  def create
    @student = Student.create(student_params)
    byebug
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :last_name, :address, :neighborhood, :email)
  end
end
