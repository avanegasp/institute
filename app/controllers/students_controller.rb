class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    byebug
    if @student.save
        redirect_to "/"
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :last_name, :address, :neighborhood, :email, :school_id, :course_id)
  end
end
