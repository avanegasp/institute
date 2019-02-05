class Student < ApplicationRecord
  belongs_to :course
  belongs_to :school
  validates :name, uniqueness: true
  validates :email, uniqueness: true
  validates :name, presence: true
end
