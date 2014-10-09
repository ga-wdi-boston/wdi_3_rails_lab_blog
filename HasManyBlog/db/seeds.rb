post1 = Post.new(title: "hi", author: "me", content: "hello")
post2 = Post.new(title: "bye", author: "me", content: "goodbye")

comment1 = Comment.new(author: 'also me', content: 'what', post: post1.id)
comment2 = Comment.new(author: 'also me', content: 'huh', post: post2.id)