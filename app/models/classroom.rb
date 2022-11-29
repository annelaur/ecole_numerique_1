class Classroom < ApplicationRecord
  has_many :homeworks
  has_many :signs
  has_one :teacher

  validates :class_name, presence: true
end
