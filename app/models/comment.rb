class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post, foreign_key: 'post_id'

  # The function `update_post_comments_counter` increments the
  # `comments_counter` attribute of a post.
  def update_post_comments_counter
    post.update(comments_counter: post.comments.count)
  end
  
  def decrement_comment_count
    post.decrement!(:comments_counter)
  end
end

# Code to verify if the update_post_comments_counter method is working
# comment = Comment.first
# comment.update_post_comments_counter
