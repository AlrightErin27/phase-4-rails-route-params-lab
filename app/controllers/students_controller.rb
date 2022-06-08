class StudentsController < ApplicationController
  def index
    students = params[:name] ? Student.by_name(params[:name]) : Student.all
    render json: students
  end

  def grades
    # grades = Student.all
  end

  def highest_grade; end

  def show
    student = Student.all.find_by(id: params[:id])
    render json: student
  end
end
