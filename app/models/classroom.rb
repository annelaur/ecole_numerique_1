class Classroom < ApplicationRecord
  has_many :homeworks, dependent: :destroy
  has_many :signs, dependent: :destroy
  has_many :teacher, dependent: :destroy
  has_many :children, dependent: :destroy

  validates :class_name, presence: true
end
