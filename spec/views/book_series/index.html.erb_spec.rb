# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'book_series/index', type: :view do
  before(:each) do
    assign(:book_series, [
             BookSeries.create!(
               title: 'Title'
             ),
             BookSeries.create!(
               title: 'Title'
             )
           ])
  end

  it 'renders a list of book_series' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 0.to_s
  end
end
