class BooksController < ApplicationController
  def index
    # your code here

    @books = Book.all
  end

  def new
    # your code here
  end

  def create
    p params.keys
    p "Hello World"
    helpful = params[:book]
    p helpful
    p helpful.class
    Book.create!(author: helpful[:author], title: helpful[:title])
    redirect_to action: "index"
    # your code here
  end

  def destroy
    id = params[:id]
    Book.delete(id)
    redirect_to action: "index"
    # your code here
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
