class Teacher < ApplicationRecord
  belongs_to :classroom

  validates :first_name, :last_name, presence: true
end
