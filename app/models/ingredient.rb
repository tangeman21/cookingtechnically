class Ingredient < ApplicationRecord
  belongs_to :ingredient_type
  searchkick
end
