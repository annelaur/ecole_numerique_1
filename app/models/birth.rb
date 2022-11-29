class Birth < ApplicationRecord
  belongs_to :parent_user
  belongs_to :child
end
