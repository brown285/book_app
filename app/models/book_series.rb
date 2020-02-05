# frozen_string_literal: true

# This is a book series...
class BookSeries < ApplicationRecord
  has_many :books

  validates :title, presence: true

  def book_count
    Book.where(book_series_id: id).count
  end

  def total_pages
    books.map {|book| book.pages}.sum
  end
end
