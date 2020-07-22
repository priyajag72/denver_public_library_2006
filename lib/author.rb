class Author
  attr_reader :name, :books

  def initialize(author_details)
    @name = "#{author_details[:first_name]} #{author_details[:last_name]}"
    @books = []
  end

  def write(title, date)
    new_book = Book.new({title: title, publication_date: date})
    @books << new_book
  end

end
