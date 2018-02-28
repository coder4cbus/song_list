# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Artist.find_or_create_by(name: "Billy Joel")
a.songs.create(name: "We Didn't Start the Fire", duration: 231)
a.songs.create(name: "A Matter of Trust", duration: 367)
a.songs.create(name: "Honesty", duration: 501)
a.songs.create(name: "Piano Man", duration: 384)
a.songs.create(name: "Uptown Girl", duration: 432)

a = Artist.find_or_create_by(name: "Madonna")
a.songs.create(name: "Vogue", duration: 435)
a.songs.create(name: "Dont' Cry for Me Argentina", duration: 523)
a.songs.create(name: "Material Girl", duration: 623)

a = Artist.find_or_create_by(name: "Prince")
a.songs.create(name: "Purple Rain", duration: 231)
a.songs.create(name: "Little Red Corvette", duration: 367)
a.songs.create(name: "1999", duration: 501)
