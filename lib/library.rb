class Library
  def initialize(lib_name)
    @lib_name = lib_name
    @lib_books = []
    @lib_authors = []
  end

  def name
    @lib_name
  end

  def books
    @lib_books
  end

  def authors 
    @lib_authors
  end

  def adds_author(author)
    @lib_authors << author
    @lib_books << author.books
  end

  def publication_time_frame(author)
    books_time_frame = {}
    years_written = []
    @lib_books.flatten.each do |book|
      if book.author == author
        years_written << book.publication_year
      end
    end
    
    books_time_frame[:start] = years_written.min 
    books_time_frame[:end] = years_written.max

    books_time_frame
  end
end 

