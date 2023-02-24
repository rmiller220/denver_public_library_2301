require 'date'

class Book
  attr_reader :title, :publication_date
  def initialize(book_details)
    @author_first_name = book_details[:author_first_name]
    @author_last_name = book_details[:author_last_name]
    @title = book_details[:title]
    @publication_date = book_details[:publication_date]
  end

  def title
    @title
  end
  
  def author
    "#{@author_first_name} #{@author_last_name}"
  end

  def publication_year
    Date.parse(@publication_date).year
  end
end