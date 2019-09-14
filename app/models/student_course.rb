class StudentCourse < ApplicationRecord
	validates :course, uniqueness: { scope: :student }

	belongs_to :student
	belongs_to :course, dependent: :destroy
end
