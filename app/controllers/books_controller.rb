class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end

  def show
    @book =Book.find(params[:id])
  end

  def new
    @book =Book.new
  end
  

  def create
    @book =Book.all(book_params)
    book.save
    redirect_to book_path(book.id)
  end



  def edit
    @book = Book.find(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
