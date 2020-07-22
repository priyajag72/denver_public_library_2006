require "minitest/autorun"
require "minitest/pride"
require "./lib/book"

class BookTest < Minitest::Test

  def test_it_exists
    assert_instance_of Book, book
  end

  #def test_it_has_attributes
  #end

end
