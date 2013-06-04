# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cookbook.delete_all

Cookbook.create(title: "The Joy of Cooking", cuisine: "Modern Fusion", description: "Good food!")
Cookbook.create(title: "The Joy of Cooking II", cuisine: "Moderner Fusion", description: "Better food!")
Cookbook.create(title: "The Joy of Cooking III", cuisine: "Modernest Fusion", description: "Bestest food!")