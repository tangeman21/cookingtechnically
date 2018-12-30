# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
File.open(Rails.root.join('sources', 'food_groups.txt')).each do |line|
  split_line = line.remove('~').split('^')
  IngredientType.create! name: split_line[1], code: split_line[0]
end


File.open(Rails.root.join('sources', 'ingredients.txt')).each do |line|
  split_line = line.remove('~').split('^')
  Ingredient.create! name: split_line[2], ingredient_type: (IngredientType.find_by(code: split_line[1]))
end