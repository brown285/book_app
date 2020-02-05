class CreateBookSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :book_series do |t|
      t.string :title
      t.integer :book_count

      t.timestamps
    end
  end
end
