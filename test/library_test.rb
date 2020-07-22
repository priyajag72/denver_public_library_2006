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

  #def test_it_has_attributes
  #end

end
