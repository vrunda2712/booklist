class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text

      format.json do
        render json: @books.map { |book|
        {
          Title: book.title,
          Author: book.author
          }
        }
      end

    end
  end
end
