class Grade < ApplicationRecord
  belongs_to :course, dependent: :destroy
end
