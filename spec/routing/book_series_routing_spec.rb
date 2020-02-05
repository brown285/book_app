# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookSeriesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/book_series').to route_to('book_series#index')
    end

    it 'routes to #new' do
      expect(get: '/book_series/new').to route_to('book_series#new')
    end

    it 'routes to #show' do
      expect(get: '/book_series/1').to route_to('book_series#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/book_series/1/edit').to route_to('book_series#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/book_series').to route_to('book_series#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/book_series/1').to route_to('book_series#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/book_series/1').to route_to('book_series#destroy', id: '1')
    end
  end
end
