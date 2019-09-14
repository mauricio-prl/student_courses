class Course < ApplicationRecord
	DURATION_REGEX = /\d+ \w+/

	validates :name, presence: true
	validates :duration, presence: true, format: { with: DURATION_REGEX }

	has_many :student_courses
	has_many :students, through: :student_courses
  has_many :grades
end
