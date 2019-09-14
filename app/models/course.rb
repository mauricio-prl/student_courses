class Course < ApplicationRecord
	validates :name, presence: true
	validates :duration, presence: true


	has_many :student_courses
	has_many :students, through: :student_courses
  has_many :grades
end
