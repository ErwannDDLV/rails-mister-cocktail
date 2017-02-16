URL = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
list = open(URL)
Ingredient.destroy_all

JSON.parse(list.read)["drinks"].each do |h|
  h.values
  ing = Ingredient.new(name: h.values)
  ing.save
end
