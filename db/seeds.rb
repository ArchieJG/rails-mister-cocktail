ingredients = %w(rum sugar mint coco whisky egg absinthe)

ingredients.each do |ingredient|
  puts "Trying to create #{ingredient}..."
  Ingredient.create! name: ingredient
  puts "#{ingredient} created."
end
