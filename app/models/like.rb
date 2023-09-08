class Like < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'

  # The function `update_post_likes_counter` increments the `likes_counter`
  # attribute of a post.
  def update_post_likes_counter
    post.increment!(:likes_counter)
  end
end
# Code to verify if the update_post_comments_counter method is working
# Like.create(users_id: user.id, posts_id: post.id)
# like = Like.first
# like.update_post_likes_counter
