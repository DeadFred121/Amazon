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
    @book.increment!(:views, 1)
  end

  def show_store
    @store = Store.find(params[:id])
  end

  def stores
    if request.post?
      @stores = Store.near(params[:store][:address], 50)
    else
      @stores = Store.all
    end
  end

end
