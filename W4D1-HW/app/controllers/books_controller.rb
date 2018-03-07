class BooksController < ApplicationController
  def index
    # your code here

    @books = Book.all
    render :index
  end

  def new
    # your code here
    render :new
  end

  def create
    Book.create!(author: params[:book][:author], title: params[:book][:title])
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
