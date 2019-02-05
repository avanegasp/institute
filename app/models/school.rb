class School < ApplicationRecord
  has_many :courses
  has_many :students
end
