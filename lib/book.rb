class Book
  attr_reader :title, :author, :publication

  def initialize(book_details)
    @title = book_details[:title]
    @author = "#{book_details[:author_first_name]} #{book_details[:author_last_name]}"
    @publication = book_details[:publication_date]
  end

  def publication_year
    if @publication.split[2] == nil
      if @publication.split[1] == nil
        @publication.split[0]
      else
        @publication.split[1]
      end
    elsif @publication.split[1] == nil
      @publication.split[0]
    elsif @publication.split == [@publication]
      @publication
    else
     @publication.split[2]
   end
  end
end
