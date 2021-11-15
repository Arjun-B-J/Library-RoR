class BooksController < ApplicationController
  def index
    @books = Book.all
    @output = json: Book.all
    render output
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create(book_params)

    redirect_to book_path(book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)

    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:b_id, :b_title, :author, :publisher, :year)
  end
end
