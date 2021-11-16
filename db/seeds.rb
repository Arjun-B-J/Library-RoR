# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(b_id: 1, b_title: 'Othello', publisher: 'Old Book Publications', author: 'Shakesphere', year: 1650)
Book.create(b_id: 2, b_title: 'Deception Point', publisher: 'Dan Brown Publishing', author: 'Dan Brown', year: 2012)
Book.create(b_id:3, b_title:'2 States',publisher:'chetan bhagat publications' , author: 'Chetan Bhagat', year: 2008)