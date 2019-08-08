class Dose < ApplicationRecord
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  belongs_to :cocktail
  belongs_to :ingredient
end
