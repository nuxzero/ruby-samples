class Book
  attr_accessor :title, :author, :pages

  # Initialize method is called when a new object is created.
  def initialize(title="", author="", pages=0)
    # @ is an instance variable. It refers to the class attributes.
    @title = title
    @author = author
    @pages = pages
  end

  def is_large?
    @pages >= 400
  end
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 400
puts book1.title

book2 = Book.new("Lord of the Rings", "Tolkien", 500)
puts book2.title
puts book2.is_large?