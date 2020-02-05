# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/index', type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(first_name: 'First', last_name: 'Last'))
    assign(:books, [
             Book.create!(
               title: 'Title',
               pub_year: 'Pub Year',
               author: @author
             ),
             Book.create!(
               title: 'Title',
               pub_year: 'Pub Year',
               author: @author
             )
           ])
  end

  it 'renders a list of books' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Pub Year'.to_s, count: 2
  end
end
