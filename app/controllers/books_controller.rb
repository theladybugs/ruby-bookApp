class BooksController < ApplicationController
  def index
    @all_books = Book.all
    @all_categories = Category.all
  end

  def create
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/books"
  end

  def show 
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.title = params[:title]
    @book.save
    redirect_to "/books/#{@book.id}"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/books"
  end
end
