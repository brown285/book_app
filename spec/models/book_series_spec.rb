# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookSeries, type: :model do
  before do
    @jrr = Author.create!(first_name: 'J.R.R.', last_name: 'Tolkien')
  end
  context 'Book series knows all about its books' do
    it 'Book series knows its title' do
      book_series = BookSeries.create!(title: 'The Lord Of the Rings')
      expect(book_series.title).to eq('The Lord Of the Rings')
    end

    it 'Book series knows the count of its member books' do
      book_series = BookSeries.create!(title: 'The Lord Of the Rings')
      Book.create!(title: 'The Fellowship of The Ring', pub_year: '1954', book_series_id: book_series.id, author: @jrr)
      Book.create!(title: 'The Two Towers', pub_year: '1954', book_series_id: book_series.id, author: @jrr)
      Book.create!(title: 'The Return Of the King', pub_year: '1955', book_series_id: book_series.id, author: @jrr)
      expect(book_series.book_count).to eq(3)
    end

    it 'Book series knows of its member books' do
      book_series = BookSeries.create!(title: 'The Lord Of the Rings')
      book1 = Book.create!(title: 'The Fellowship of The Ring', pub_year: '1954', book_series_id: book_series.id, author: @jrr)
      book2 = Book.create!(title: 'The Two Towers', pub_year: '1954', book_series_id: book_series.id, author: @jrr)
      book3 = Book.create!(title: 'The Return Of the King', pub_year: '1955', book_series_id: book_series.id, author: @jrr)
      expect(book_series.books).to include(book1, book2, book3)
    end
  end
end
