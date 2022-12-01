class Safe < ApplicationRecord
  belongs_to :child, dependent: :destroy

  validates :file_name, presence: true

end
