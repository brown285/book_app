# frozen_string_literal: true

# This encapsulates a book
class Book < ApplicationRecord
  belongs_to :book_series, optional: true
  belongs_to :author, optional: true

  # accepts_nested_attributes_for :book_series
  # accepts_nested_attributes_for :author
  #
  validates :title, presence: true
  validates :pub_year, presence: true
end
