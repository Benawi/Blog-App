class LikesController < ApplicationController
  # The function creates a like for a post and updates the post's like counter.
  def create_like
    @post = Post.find(params[:id])
    @like = Like.new(author_id: current_user.id, post_id: @post.id)
    @like.update_post_likes_counter
    redirect_to user_post_path(@post), notice: 'Post liked successfully.'
    
  end

  private

  # The function `like_params` is used to permit specific parameters for the
  # `like` object in a Ruby on Rails application.
  def like_params
    params.require(:like).permit(:author_id, :post_id)
  end
end
