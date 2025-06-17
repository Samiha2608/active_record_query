Person.destroy_all
Post.destroy_all
Comment.destroy_all

p1 = Person.create(name: "Samiha", age: 21)
p2 = Person.create(name: "Nabiha", age: 18)

post1 = p1.posts.create(title: "Post 1", body: "Post 1 content")
post2 = p1.posts.create(title: "Post 2", body: "Post 2 content")
post3 = p2.posts.create(title: "Post 3", body: "Post 3 content")


post1.comments.create(content: "Comment A")
post1.comments.create(content: "Comment B")
post2.comments.create(content: "Comment C")
post3.comments.create(content: "Comment D")
