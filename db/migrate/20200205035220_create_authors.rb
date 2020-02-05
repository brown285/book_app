class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :first_name,  null: false
      t.string :last_name,  null: false

      t.timestamps
    end
    add_column :books, :author_id, :integer
  end
end
