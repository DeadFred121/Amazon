class PagesController < ApplicationController

  def index
  end

  def books
    @books = Book.all
  end

  def authors
    @authors = Author.all
  end

end
