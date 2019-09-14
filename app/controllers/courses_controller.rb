class CoursesController < ApplicationController
	before_action :set_course, only: [:edit, :update, :show, :destroy]

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		if @course.save
			flash[:success] = 'Course successfully created.'
			redirect_to courses_path
		else
			render 'new'
		end
	end

	def index
		@courses = Course.all
	end

	def edit
	end

	def update
		if @course.update(course_params)
			flash[:success] = 'Course was successfully updated.'
			redirect_to courses_path
		else
			render 'edit'
		end
	end

	def destroy
		@course.destroy
		flash[:danger] = 'Course was successfully deleted.'
		redirect_to courses_path
	end
	
	private

	def set_course
		@course = Course.find(params[:id])
	end

	def course_params
		params.require(:course).permit(:name, :duration)
	end
end
