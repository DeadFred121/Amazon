class PagesController < ApplicationController

  def index
  end

  def books
    @books = Book.order(rating: :desc)
  end

  def authors
    @authors = Author.all
  end

  def show
    @book = Book.find(params[:id])
  end

end
