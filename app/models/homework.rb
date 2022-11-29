class Homework < ApplicationRecord
  belongs_to :classroom

  validates :category, presence: true
end
