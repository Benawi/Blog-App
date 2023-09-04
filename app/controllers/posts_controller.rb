class PostsController < ApplicationController
    def index
      @user = current_user
      @posts = Post.where(author_id: @user.id).order(:id)
    end
  
    
end