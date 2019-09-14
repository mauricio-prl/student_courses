class Grade < ApplicationRecord
	DURATION_REGEX = /\d+ \w+/

	validates :name, presence: true, uniqueness: { scope: :course }
	validates :duration, presence: true, format: { with: DURATION_REGEX }

  belongs_to :course, dependent: :destroy
end
