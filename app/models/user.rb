class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id, class_name: 'Post'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # Callback
  after_save :most_recent_posts
  def most_recent_posts
    posts = Post.all
    posts.order(created_at: :desc).limit(3)
  end
end
