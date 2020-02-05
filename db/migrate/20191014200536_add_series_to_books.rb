class AddSeriesToBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :book_series, foreign_key: true
  end
end
