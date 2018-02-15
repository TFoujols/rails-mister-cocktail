class Cocktail < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  # Associations
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
