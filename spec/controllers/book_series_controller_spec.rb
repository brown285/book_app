# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookSeriesController, type: :controller do # rubocop:disable Metrics/BlockLength
  # This should return the minimal set of attributes required to create a valid
  # BookSeries. As you add validations to BookSeries, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { title: 'A Non Blank Series Title' }
  end

  let(:invalid_attributes) do
    { title: nil }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BookSeriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      BookSeries.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      book_series = BookSeries.create! valid_attributes
      get :show, params: { id: book_series.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      book_series = BookSeries.create! valid_attributes
      get :edit, params: { id: book_series.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new BookSeries' do
        expect do
          post :create, params: { book_series: valid_attributes }, session: valid_session
        end.to change(BookSeries, :count).by(1)
      end

      it 'redirects to the created book_series' do
        post :create, params: { book_series: valid_attributes }, session: valid_session
        expect(response).to redirect_to(BookSeries.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { book_series: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { title: 'New Book Series Title' }
      end

      it 'updates the requested book_series' do
        book_series = BookSeries.create! valid_attributes
        put :update, params: { id: book_series.to_param, book_series: new_attributes }, session: valid_session
        book_series.reload
        expect(book_series.title).to eq(new_attributes.fetch(:title))
      end

      it 'redirects to the book_series' do
        book_series = BookSeries.create! valid_attributes
        put :update, params: { id: book_series.to_param, book_series: valid_attributes }, session: valid_session
        expect(response).to redirect_to(book_series)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        book_series = BookSeries.create! valid_attributes
        put :update, params: { id: book_series.to_param, book_series: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested book_series' do
      book_series = BookSeries.create! valid_attributes
      expect do
        delete :destroy, params: { id: book_series.to_param }, session: valid_session
      end.to change(BookSeries, :count).by(-1)
    end

    it 'redirects to the book_series list' do
      book_series = BookSeries.create! valid_attributes
      delete :destroy, params: { id: book_series.to_param }, session: valid_session
      expect(response).to redirect_to(book_series_index_url)
    end
  end
end
