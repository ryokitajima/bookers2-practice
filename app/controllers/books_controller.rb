class BooksController < ApplicationController
  before_action :is_matching_login_book, only: [:edit, :update]
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

   def new
    @book = Book.new
    @books = Book.all
   end

  def create
    @user = current_user
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    flash[:notice] = "You have created book successfully."
    redirect_to book_path(@book.id)
    else
    render :index
    end
  end

  def show
    @book = Book.new
    @books = Book.find(params[:id])
    @user = @books.user
    @users = [@user]
  end

  def edit
    @book = Book.find(params[:id])
    @user = current_user
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    flash[:notice] = "You have updated book successfully."
    redirect_to book_path(@book.id)
    else
      render :edit
    end
  end
  def destroy
    @books = Book.find(params[:id])
    @books.destroy
    redirect_to books_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  def book_params
    params.require(:book).permit(:title, :body)
  end
  def is_matching_login_book
    @book = Book.find(params[:id])
    unless @book.user == current_user
      redirect_to books_path
    end
  end
end
