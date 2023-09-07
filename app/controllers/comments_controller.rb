class CommentsController < ApplicationController
  # The function creates a comment for a post and updates the comment counter for the post.
  def create
    @post = Post.find(params[:id])
    @comment = current_user.comments.build(comment_params.merge(post: @post))
    if @comment.save
      @comment.update_comments_count
      redirect_to user_post_path(@post), notice: 'Comment added successfully.'
    else
      render :show
    end
  end

  private

  # The function `comment_params` is used to extract and permit the `text` parameter
  # from the `comment` object in the `params` hash.
  def comment_params
    params.require(:comment).permit(:text)
  end
end
