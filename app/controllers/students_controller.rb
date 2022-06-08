class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    # grades = Student.all
  end

  def highest_grade; end

  def show
    if params[:id]
      student = Student.all.find_by(id: params[:id])
    elsif params[:first_name]
      student = Student.all.find_by(first_name: params[:first_name])
    elsif params[:last_name]
      student = Student.all.find(last_name: params[:last_name])
    end
    render json: student
  end
end
