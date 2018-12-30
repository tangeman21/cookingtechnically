class RecipeStep < ApplicationRecord
  has_many :step_ingredients
  belongs_to :recipe
  belongs_to :technique
end
