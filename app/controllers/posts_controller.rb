class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = @user.posts
    @post = Post.new
  end
  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.author_id)
    @comments = Comment.where(post_id: @post.id)
  end

  # The `create` function creates a new post and associates it with the current user,
  # then redirects to the user's posts page if successful, or renders the index page
  # with the user's posts if there are errors.
  def create
    @user = current_user
    @post = Post.new(post_params.merge(author_id: @user.id))
    if @post.save
      @post.update_posts_count
      redirect_to user_posts_path(@user), notice: 'Post created successfully.'
    else
      @posts = @user.posts
      render :index
    end
  end

  private

  # The function `post_params` is used to extract and permit specific parameters from
  # the `params` object in a Ruby on Rails application.
  def post_params
    params.require(:post).permit(:title, :text, :author_id, :comments_counter, :likes_counter)
  end
end