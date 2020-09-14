class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end

  def show
    
  end

  def new
    @book =Book.new
  end
  
  def create
    book = Book.all(book_params)
    book.save
    redirect_to books_path
  end


  def edit
  end
end
