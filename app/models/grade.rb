class Grade < ApplicationRecord
  has_many :users, through: :user_grades
end
