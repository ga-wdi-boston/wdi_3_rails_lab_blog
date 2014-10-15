
post1 = Post.create(post_title: "best day ever", post_content: "we went to the zoo!", user_id: 1)


post2 = Post.create(post_title: "worst day ever", post_content: "I fell down the stairs", user_id: 1 )


post3 = Post.create(post_title: "life is rad", post_content: "ice cream is my favorite", user_id: 1 )


post4 = Post.create(post_title: "this is a cool new post", post_content: "this is new post content", user_id: 1 )

post5 = Post.create(post_title: "coolstuff", post_content: "this is new post content", user_id: 1 )

comment1 = Comment.create(comment_text: "woohoo", user_id: 1 , post_id: 1)

comment2 = Comment.create(comment_text: "that sucks", user_id: 1 , post_id: 2)

comment3 = Comment.create(comment_text: "woohoo", user_id: 1 , post_id: 1)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
