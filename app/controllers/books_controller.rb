class BooksController < ApplicationController

  def show
  end
  
  def index
    @books = Book.all
      def new
        @books = Book.new
      end
  end
  
  def create
    book = Book.new(book_params)
    book.save
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end