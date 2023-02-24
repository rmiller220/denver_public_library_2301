class Author
  def initialize(author_details)
    @first_name = author_details[:first_name]
    @last_name = author_details[:last_name]
    @books = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end
  def books
    @books
  end
  def write(title, publication_date)
    book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date})
    @books << book
    # require 'pry'; binding.pry
    book
  end
end
