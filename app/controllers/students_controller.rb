class StudentsController < ApplicationController
	before_action :set_student, only: [:edit, :update, :show, :destroy]

  def home
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(student_params)
  	if @student.save
  		flash[:success] = 'Student was successfully created.'
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def update
  	if @student.update(student_params)
  		flash[:success] = "Student was successfully updated."
  		redirect_to student_path(@student)
  	else
  		render 'edit'
  	end
  end

  def edit
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def destroy
  	@student.destroy
  	flash[:danger] = 'Student was successfully deleted.'
  	redirect_to root_path
  end

  private

  def student_params
  	params.require(:student).permit(:name, :email)
  end

  def set_student
  	@student = Student.find(params[:id])
  end
end
