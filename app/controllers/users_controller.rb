class UsersController < ApplicationController
  # The index function retrieves all users from the database.
  def index
    @users = User.all
  end

  def edit
    current_user.update(user_params)
  end

  # The function retrieves a user object from the database
  # based on the provided ID.
  def show
    @user = User.find(params[:id])
    @posts = Post.includes(:user).where(author_id: @user.id)
    cookies[:user_id] = @user.id
  end
end