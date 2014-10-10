# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all
b1 = Post.create(author: "Tom Insightrul", category: "Innovate", subject: "Failure or 10,000 ways to do it wrong?", content: "This is based on a famous quote from Edison that reminds us that failures are inevidable and paths for learning rather than actual failure.")
b2 = Post.create(author: "Max Monday", category: "Leadership", subject: "Racing Sheep, Herding Race Horses", content: "In this presentation from Dave Thomas in 2007, he talks about developing expertise...")

b2.comments.create(author: "Holly Moody", content: "Love this presentation. Has helped me use the right prism when talking with folks of widely varying expertise.")
b2.comments.create(author: "Another Fine User", content: "Great presentation from an industry Guru!!")

b1.comments.create(author: "Suzie Blogger", content: "Never fail, always try again..")
