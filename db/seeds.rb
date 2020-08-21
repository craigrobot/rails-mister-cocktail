# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
# Examples:
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "angostura bitters")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "white rum")
Ingredient.create(name: "sugar")
soda = Ingredient.create(name: "soda")
vodka = Ingredient.create(name: "vodka")
orange = Ingredient.create(name: "orange")

old_fashioned = Cocktail.new(name: 'Old Fashioned')
old_fashioned.save
Dose.create(description: '1.5oz', cocktail: old_fashioned, ingredient: vodka)
Dose.create(description: '2oz', cocktail: old_fashioned, ingredient: orange)
Dose.create(description: '3oz', cocktail: old_fashioned, ingredient: soda)

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
