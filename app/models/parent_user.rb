class ParentUser < ApplicationRecord
  has_many :births, dependent: :destroy

  has_many :children, through: :births

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
