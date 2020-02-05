class RemoveBookCount < ActiveRecord::Migration[5.1]
  def change
    remove_column :book_series, :book_count, :integer
  end
end
