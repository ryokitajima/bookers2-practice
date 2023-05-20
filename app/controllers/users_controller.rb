class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def new
    @user = User.new
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @user = User.find(params[:id])  
    @book = Book.new
    @books = @user.books
  end

  def edit
    @current_user = User.find_by(id: params[:id])
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(current_user) 
    else
    render :edit
    end
  end

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
