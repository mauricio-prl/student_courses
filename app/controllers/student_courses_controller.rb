class StudentCoursesController < ApplicationController
	before_action :set_student

	def new
		@student_course = StudentCourse.new
	end

	def create
		@student_course = @student.student_courses.create(student_course_params)
		if @student_course.save
			flash[:success] = "Course successfully added to #{@student.name}."
			redirect_to student_path(@student)
		else
			render 'new'
		end
	end

	private

	def set_student
		@student = Student.find(params[:student_id])
	end

	def student_course_params
		params.require(:student_course).permit(:course_id)
	end
end
