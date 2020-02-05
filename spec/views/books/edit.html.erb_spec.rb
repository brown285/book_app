# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/edit', type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
                            title: 'MyString',
                            pub_year: 'MyString',
                            author: Author.create!(first_name: 'First', last_name: 'Last')
                          ))
  end

  it 'renders the edit book form' do
    render

    assert_select 'form[action=?][method=?]', book_path(@book), 'post' do
      assert_select 'input[name=?]', 'book[title]'

      assert_select 'input[name=?]', 'book[pub_year]'
    end
  end
end
