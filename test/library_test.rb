require "minitest/autorun"
require "minitest/pride"
require "./lib/author"
require "./lib/library"

class LibraryTest < Minitest::Test

  def setup
    @dpl = Library.new("Denver Public Library")
  end

  def test_it_exists
    assert_instance_of Library, @dpl
  end

  def test_it_has_attributes
    assert_equal "Denver Public Library", @dpl.name
    assert_equal [], @dpl.books
    assert_equal [], @dpl.authors
  end

  def test_it_can_add_authors_and_books_to_library
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book1 = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    assert_equal [charlotte_bronte, harper_lee], @dpl.authors
    assert_equal [book1, professor, villette, mockingbird], @dpl.books
  end

end
