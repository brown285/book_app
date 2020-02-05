# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'book_series/edit', type: :view do
  before(:each) do
    @book_series = assign(:book_series, BookSeries.create!(
                                          title: 'MyString'
                                        ))
  end

  it 'renders the edit book_series form' do
    render

    assert_select 'form[action=?][method=?]', book_series_path(@book_series), 'post' do
      assert_select 'input[name=?]', 'book_series[title]'
    end
  end
end
