# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'book_series/show', type: :view do
  before(:each) do
    @book_series = assign(:book_series, BookSeries.create!(title: 'Title'))
    @author = assign(:author, Author.create(first_name: 'Joe', last_name: 'Cool'))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
  end

  it 'renders member books when there are any' do
    book_series = BookSeries.create!(title: 'The Lord Of the Rings')
    Book.create!(title: 'The Fellowship of The Ring', pub_year: '1954', book_series: book_series, author: @author)
    Book.create!(title: 'The Two Towers', pub_year: '1954', book_series: book_series, author: @author)
    Book.create!(title: 'The Return Of the King', pub_year: '1955', book_series: book_series, author: @author)

    @book_series = assign(:book_series, book_series)

    render

    expect(rendered).to match(/The Fellowship of The Ring/)
    expect(rendered).to match(/The Two Towers/)
    expect(rendered).to match(/The Return Of the King/)
  end

  it 'renders no books when there are none' do
    book_series = BookSeries.create!(title: 'The Lord Of the Rings')

    @book_series = assign(:book_series, book_series)

    render

    expect(rendered).to match(/doesn't have any books to display/)
  end
end
