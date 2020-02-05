# frozen_string_literal: true

json.extract! book_series, :id, :title, :book_count, :created_at, :updated_at
json.url book_series_url(book_series, format: :json)
