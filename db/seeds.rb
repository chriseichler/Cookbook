# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cookbook.delete_all
Recipe.delete_all

c1 = Cookbook.create(title: "The Joy of Cooking", cuisine: "Modern Fusion", description: "Good food!", isbn: 978)
c2 = Cookbook.create(title: "The Joy of Cooking II", cuisine: "Moderner Fusion", description: "Better food!", isbn: 978)
c3 = Cookbook.create(title: "The Joy of Cooking III", cuisine: "Modernest Fusion", description: "Bestest food!", isbn: 978)


r1 = Recipe.new(name: 'Grilled Cheese', instructions: 'Grill some cheese', serving_size: '1', cook_time: '45 min', course: 'Lunch', image_url: 'http://www.seraphicpress.com/wp-content/uploads/2012/02/grilled-cheese-sandwich.jpg')
r2 = Recipe.new(name: 'Mac-n-Cheese', instructions: 'Boils some pasta and add some cheese', serving_size: '2', cook_time: '25 min', course: 'Dinner', image_url: 'http://4.bp.blogspot.com/_6Hq15LR-ptk/S8AfqYLsx3I/AAAAAAAAAQs/X935WD8lgN8/s1600/Macaroni+and+Cheese.jpg')
r3 = Recipe.new(name: 'Poached Salmon', instructions: 'Poach some Salmon', serving_size: '2', cook_time: '45 min', course: 'Dinner', image_url: 'http://www.seriouseats.com/recipes/images/20091222-dt-shallow-poached-salmon.jpg')
r4 = Recipe.new(name: 'Huevos Rancheros', instructions: 'Poach some eggs in salsa', serving_size: '2', cook_time: '35 min', course: 'Breakfast', image_url: 'http://www.simplyrecipes.com/wp-content/uploads/2008/02/huevos-rancheros.jpg?ea6e46')
r5 = Recipe.new(name: 'Steak and Eggs', instructions: 'Grill a steak and throw some eggs at it', serving_size: '1', cook_time: '23 min', course: 'Dinner', image_url: 'http://www.seriouseats.com/recipes/images/20100628_steak_eggs2.jpg')


c1.recipes << r1 << r2
c2.recipes << r3 << r5
c2.recipes << r4

