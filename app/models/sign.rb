class Sign < ApplicationRecord
  belongs_to :classroom

  validates :document_name, presence: true
end
