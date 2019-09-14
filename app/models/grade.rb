class Grade < ApplicationRecord
	validates :name, presence: true, uniqueness: { scope: :course }
	validates :duration, presence: true

  belongs_to :course, dependent: :destroy
end
