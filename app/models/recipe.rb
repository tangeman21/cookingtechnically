class Recipe < ApplicationRecord
  has_and_belongs_to_many :techniques
  has_many :recipe_steps
  searchkick

end
