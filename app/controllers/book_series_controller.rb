# frozen_string_literal: true

class BookSeriesController < ApplicationController
  before_action :set_book_series, only: %i[show edit update destroy]

  # GET /book_series
  # GET /book_series.json
  def index
    @book_series = BookSeries.all
  end

  # GET /book_series/1
  # GET /book_series/1.json
  def show; end

  # GET /book_series/new
  def new
    @book_series = BookSeries.new
  end

  # GET /book_series/1/edit
  def edit; end

  # POST /book_series
  # POST /book_series.json
  def create
    @book_series = BookSeries.new(book_series_params)

    respond_to do |format|
      if @book_series.save
        format.html { redirect_to @book_series, notice: 'Book series was successfully created.' }
        format.json { render :show, status: :created, location: @book_series }
      else
        format.html { render :new }
        format.json { render json: @book_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_series/1
  # PATCH/PUT /book_series/1.json
  def update
    respond_to do |format|
      if @book_series.update(book_series_params)
        format.html { redirect_to @book_series, notice: 'Book series was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_series }
      else
        format.html { render :edit }
        format.json { render json: @book_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_series/1
  # DELETE /book_series/1.json
  def destroy
    @book_series.destroy
    respond_to do |format|
      format.html { redirect_to book_series_index_url, notice: 'Book series was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_book_series
    @book_series = BookSeries.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def book_series_params
    params.require(:book_series).permit(:title)
  end
end
