class Child < ApplicationRecord
  belongs_to :classroom

  has_one :teacher, through: :classrooms

  has_many :saves, dependent: :destroy
  has_many :births, dependent: :destroy
  has_many :homeworks, through: :classrooms
  has_many :parent_users, through: :births

  validates :child, presence: true
end
