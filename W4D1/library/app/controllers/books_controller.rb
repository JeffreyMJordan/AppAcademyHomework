class BooksController < ApplicationController
  def index
    
    @books = Book.all
  end

  def new
    
  end

  def create
    @book = Book.new(title: book_params[:title], author: book_params[:author])
    @book.save 
    redirect_to books_url
  end

  def destroy
    book = Book.find_by_id(params[:id])
    book.delete
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
