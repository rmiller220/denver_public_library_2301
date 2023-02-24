require './lib/library'
require './lib/book'
require './lib/author'

RSpec.describe do
  it 'exists' do
    library = Library.new("Denver Library")
    expect(library).to be_a(Library)
    expect(library.name).to eq("Denver Library")
    expect(library.books).to eq([])
    expect(library.authors).to eq([])
  end
  it 'adds_author' do
    library = Library.new("Denver Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    library.adds_author(charlotte_bronte)

    expect(library.authors).to eq([charlotte_bronte])
    expect(library.books).to eq([[jane_eyre]])
  end

  it 'has a publication time frame for author' do
    library = Library.new("Denver Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    library.adds_author(charlotte_bronte)
# require 'pry'; binding.pry
    expect(library.authors).to eq([charlotte_bronte])
    expect(library.books).to eq([[jane_eyre, villette]])
require 'pry'; binding.pry
   library.publication_time_frame(charlotte_bronte)
  end
end