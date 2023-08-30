class User < ApplicationRecord
  has_many :posts
  has_many :comments, foreign_key: 'author_id', class_name: 'Comment'
  has_many :likes, foreign_key: 'author_id', class_name: 'Like'
  def most_recent_posts
    posts = Post.all
    posts.order(created_at: :desc).limit(3)
  end
end
