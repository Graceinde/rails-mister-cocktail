Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
rhum = Ingredient.create(name: "white rhum")

mojito = Cocktail.create!(name: "Mojito")

dose_one = Dose.new(description: "2 cubes of")
dose_one.ingredient = ice
dose_one.cocktail = mojito
dose_one.save!

Dose.create!({
  description: "muddle five",
  ingredient: mint,
  cocktail: mojito
})

Dose.create!({
  description: "2 oz",
  ingredient: rhum,
  cocktail: mojito
})


