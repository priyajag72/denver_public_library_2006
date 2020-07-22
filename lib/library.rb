class Library

  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
  end
end
