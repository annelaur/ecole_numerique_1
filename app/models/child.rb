class Child < ApplicationRecord
  belongs_to :classroom
  belongs_to :safe
  has_many :births, dependent: :destroy


  has_one :teacher, through: :classrooms
  has_many :homeworks, through: :classrooms
  has_many :parent_users, through: :births

end
