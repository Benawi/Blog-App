class Api::CommentsController < ApplicationController
  load_and_authorize_resource
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = Comment.new(comment_params.merge(author_id: current_user.id, post_id: @post.id))

    if @comment.save
      @comment.update_post_comments_counter
      render json: @comment, status: :created
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :users_id)
  end
end
