class Book
  attr_reader :title, :author

  def initialize(book_details)
    @title = book_details[:title]
  end
end
