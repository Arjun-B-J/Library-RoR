class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Book.all
  end

  def show
    render json: Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create(book_params)
    render json: book
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(:b_title=> params[:title], :author=> params[:author], :publisher=> params[:publisher], :year=> params[:year])
    render json: book

  end

  def destroy
    book = Book.find(params[:id])
    Book.destroy(params[:id])
    render json: book
  end

  private

  def book_params
    params.require(:book).permit(:b_id, :b_title, :author, :publisher, :year)
  end
end