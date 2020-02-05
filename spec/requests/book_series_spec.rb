# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'BookSeries', type: :request do
  describe 'GET /book_series' do
    it 'works! (now write some real specs)' do
      get book_series_index_path
      expect(response).to have_http_status(200)
    end
  end
end
