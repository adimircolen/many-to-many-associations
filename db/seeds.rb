p 'herman = Author.create name: "Herman Melville"'
herman = Author.create name: "Herman Melville"
p 'moby = Book.create title: "Moby Dick"'
moby = Book.create title: "Moby Dick"
p "herman.books << moby"
herman.books << moby
p "moby.authors"
moby.authors
p "herman.books"
herman.books
p "herman.books.where(title: 'Moby Dick')"
herman.books.where(title: 'Moby Dick')
