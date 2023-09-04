class UsersController < ApplicationController
    def index; end
    def index
      @users = User.order(:id)
    end
  
   
end