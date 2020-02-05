require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'Author name' do
    it 'An author should know its full name' do
      ln = Author.create!(first_name: 'Larry', last_name: 'Niven')
      expect(ln.fullname).to eq("Larry Niven")
    end

    it 'Another author should know its full name' do
      ln = Author.create!(first_name: 'Jerry', last_name: 'Pournelle')
      expect(ln.fullname).to eq("Jerry Pournelle")
    end
  end

  context 'An author should know their books' do
    it 'An author knows his books' do
      ln = Author.create!(first_name: 'Larry', last_name: 'Niven')
      gfe = Book.create!(title: 'A Gift from Earth', pub_year: '1968', author: ln)
      p = Book.create!(title: 'Protector', pub_year: '1968', author: ln)
      rw = Book.create!(title: 'Ringworld', pub_year: '1970', author: ln)

      books = ln.books
      expect(books).to contain_exactly(gfe, p, rw)
    end

    it 'An author should know how many pages' do
      ln = Author.create!(first_name: 'Larry', last_name: 'Niven')
      gfe = Book.create!(title: 'A Gift from Earth', pub_year: '1968', pages: 254, author: ln)
      p = Book.create!(title: 'Protector', pub_year: '1968', pages: 304, author: ln)
      rw = Book.create!(title: 'Ringworld', pub_year: '1970', pages: 342, author: ln)

      ln.pages_written == 900
    end
  end
end
