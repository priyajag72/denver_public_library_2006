require_relative "book"

class Author
  attr_reader :name, :books

  def initialize(author_details)
    @name = "#{author_details[:first_name]} #{author_details[:last_name]}"
    @first_name = author_details[:first_name]
    @last_name = author_details[:last_name]
    @books = []
  end

  def write(title, date)
    add_book(Book.new({
      author_first_name: @first_name,
      author_last_name: @last_name,
      title: title,
      publication_date: date}))
  end

  def add_book(book)
    @books.push(book)
  end

end
