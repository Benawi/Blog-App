class User < ApplicationRecord
  has_many :posts
  has_many :comments, foreign_key: 'author_id', class_name: 'Comment'
  has_many :likes, foreign_key: 'author_id', class_name: 'Like'

  validates :name, presence: true
  validates :post_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # Callback
  after_save :most_recent_posts
  after_save :update_posts_counter
  def most_recent_posts
    posts = Post.all
    posts.order(created_at: :desc).limit(3)
  end

  def update_posts_counter
    posts_counter = Post.where(author_id: id).count
    update(posts_counter:)
  end
end
