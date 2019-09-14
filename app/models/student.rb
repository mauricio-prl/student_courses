class Student < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true
	validates :email, presence: true,
		length: {maximum: 105},
		uniqueness: true,
		format: {with: VALID_EMAIL_REGEX}

	has_many :student_courses, dependent: :destroy
  has_many :courses, through: :student_courses
end
