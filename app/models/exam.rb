class Exam < ApplicationRecord
  belongs_to :subject
  has_many :questions
end
