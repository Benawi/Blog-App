class UsersController < ApplicationController
  # The index function retrieves all users from the database.
  def index
    @users = User.all
  end

  def edit
    current_user.update(user_params)
  end
end