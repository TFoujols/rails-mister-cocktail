class Dose < ApplicationRecord
  # Validations
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient, message: "ingredient already used" }
  # Associations
  belongs_to :cocktail
  belongs_to :ingredient
end
