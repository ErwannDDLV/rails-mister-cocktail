URL = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
list = open(URL)
Ingredient.destroy_all

JSON.parse(list.read)["drinks"].each do |drink|
  drink.values
  puts drink.values
  ing = Ingredient.new(name: drink.values.first)
  ing.save
end
