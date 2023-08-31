class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'post_id', class_name: 'Comment'
  has_many :likes, foreign_key: 'post_id', class_name: 'Like'

  validates :title, presence: true, length: { maximum: 250 }
  
  # Callback
  after_save :update_comments_counter
  after_save :update_likes_counter
  after_save :most_recent_comments

  def update_comments_counter
    comments_counter = Comment.where(post_id: id).count
    update(comments_counter:)
  end

  def update_likes_counter
    likes_counter = Like.where(post_id: id).count
    update(likes_counter:)
  end

  def most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
