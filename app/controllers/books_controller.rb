class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
      @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
     redirect_to book_path(@book.id)
    else
     render action: :new
    end
  end
  #   @book = Book.new(book_params)
  #   @book.save
  #   redirect_to book_path(@book.id)
  # end



  def edit
    @book = Book.find(params[:id])
  end

  def dupdate
      @book = Book.find(params[:id])
    if book.update
      flash[:notice] = "Book was successfully updated."
     redirect_to books_path
    else
     render action: :new
    end
  end


  # def destroy
  #   book = Book.find(params[:id])
  #   book.destroy
  #   redirect_to books_path
  # end

  def destroy
      book = Book.find(params[:id])
    if book.destroy
      flash[:notice] = "Book was successfully destroyed."
     redirect_to books_path
    else
     render action: :new
    end
  end



  private
  def book_params
    params.permit(:title, :body)
  end
end
