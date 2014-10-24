# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create title: "Catcher in the Rye", author: "JD Sallinger", year: 1951
Book.create title: "On the Road", author: "Jack Kerouac", year: 1956
Book.create title: "Moby Dick", author: "Herman Melville", year: 1851
Book.create title: "The Jungle", author: "Upton Sinclair", year: 1906
Book.create title: "Canterbury Tales", author: "Chaucer", year: 1387
Book.create title: "The Iliad", author: "Homer", year: -1194

Patron.create name: "Jesse"
Patron.create name: "Chundabear"
Patron.create name: "Benjamin"
Patron.create name: "Thanh"
Patron.create name: "Dwight"
