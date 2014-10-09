
post1 = Post.create(post_title: "best day ever", post_content: "we went to the zoo!", post_user: "Shayna")


post2 = Post.create(post_title: "worst day ever", post_content: "I fell down the stairs", post_user: "Shayna")


post1 = Post.create(post_title: "life is rad", post_content: "ice cream is my favorite", post_user: "Shayna")

comment1 = Comment.create(comment_text: "woohoo", comment_user: "sean", post_id: 1)

comment2 = Comment.create(comment_text: "that sucks", comment_user: "anna", post_id: 2)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
