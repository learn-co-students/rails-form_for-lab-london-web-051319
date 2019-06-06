class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end
  
  def show
  end

  def new
  end

  def create
    student = Student.create(first_name: params[:student_first_name], last_name: params[:student_last_name])
    redirect_to student
  end

  def edit
  end

  def update
    student = @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end