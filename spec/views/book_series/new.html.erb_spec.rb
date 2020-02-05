# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'book_series/new', type: :view do
  before(:each) do
    assign(:book_series, BookSeries.new(
                           title: 'MyString'
                         ))
  end

  it 'renders new book_series form' do
    render

    assert_select 'form[action=?][method=?]', book_series_index_path, 'post' do
      assert_select 'input[name=?]', 'book_series[title]'
    end
  end
end
