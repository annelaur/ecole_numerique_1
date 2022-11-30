class Homework < ApplicationRecord
  belongs_to :classroom

  validates :category, presence: true
  validates :content, length: { minimum: 10 }
end
