post1 = Post.create(title: "hi", author: "me", content: "hello")
post2 = Post.create(title: "bye", author: "me", content: "goodbye")

comment1 = post1.comments.create(author: 'also me', content: 'what')
comment2 = post2.comments.create(author: 'also me', content: 'huh')

comment3 = comment1.comments.create(author: 'jerk', content: 'you suck')
comment4 = comment2.comments.create(author: 'your mom', content: 'lmao')