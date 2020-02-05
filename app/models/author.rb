class Author < ApplicationRecord
  has_many :books

  def fullname
    "#{first_name} #{last_name}"
  end

  def books
    Book.where(author: self)
  end

  def pages_written
    self.books.map { |book| book.pages }.sum
  end
end
