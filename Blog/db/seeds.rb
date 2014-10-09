# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

b1 = Blog.create("The 10,000 ways to do it wrong", "This is a famous quote from Edison that reminds us that failures are inevidable and paths for learning rather than actual failure.")
b2 = Blog.create("Racing Sheep, Herding Race Horses", "In this presentation from Dave Thomas in 2007, he talks about developing expertise...")
