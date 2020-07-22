class Library

  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
  end

  def publication_time_frame_for(author)
    author_writing_years = author.books.map do |book|
      book.publication_year
    end

    time_frame = {
      start: author_writing_years.min,
    end: author_writing_years.max
    }
    time_frame
  end

  def checkout

  end
end
