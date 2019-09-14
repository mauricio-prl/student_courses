class GradesController < ApplicationController
	before_action :set_grade, except: [:new, :create]
	before_action :set_course
	def new
		@grade = Grade.new
	end

	def create
		@grade = @course.grades.new(grade_params)
		if @grade.save
			flash[:success] = 'Grade was successfully created.'
			redirect_to course_path(@course)
		else
			render 'new'
		end
	end

	def show

	end

	def destroy
		@grade.destroy
		flash[:danger] = 'Grade was successfully deleted.'
		redirect_to courses_path
	end

	private

	def set_grade
		@grade = Grade.find(params[:id])
	end

	def set_course
		@course = Course.find(params[:course_id])
	end

	def grade_params
		params.require(:grade).permit(:name, :duration)
	end
end
