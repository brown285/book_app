# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/show', type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(first_name: 'First', last_name: 'Last'))
    @book = assign(:book, Book.create!(title: 'Title', pub_year: 'Pub Year', author: @author))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Pub Year/)
  end
end
