class Safe < ApplicationRecord
  belongs_to :child

  validates :file_name, presence: true

end
