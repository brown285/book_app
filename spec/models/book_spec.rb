# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'Books knows about its series' do
    it 'Stand alone book knows its not part of a series' do
      book = Book.new(title: 'Lord of the Flies')
      expect(book.book_series).to be nil
    end

    it 'Stand alone book knows its not part of a series' do
      book_series = BookSeries.create!(title: 'The Lord Of the Rings')
      jrr = Author.create!(first_name: 'J.R.R.', last_name: 'Tolkien')
      book1 = Book.create!(title: 'The Fellowship of The Ring', pub_year: '1984', book_series: book_series, author: jrr)

      expect(book1.book_series).to eq book_series
    end
  end
end
