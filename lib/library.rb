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
    require "pry"; binding.pry
  end
end
