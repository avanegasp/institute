class Course < ApplicationRecord
  belongs_to :school
  has_many :students
  validates :subject, numericality: { greater_than: 3 }
end
