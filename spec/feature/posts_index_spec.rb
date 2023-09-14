require 'rails_helper'

RSpec.describe 'User post index page', type: :feature do
  let!(:user) { User.create(name: 'Sarkodie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', posts_counter: 10) }

  before do
    5.times do
      Post.create(
        title: 'Post title',
        text: 'Post text',
        author_id: user.id,
        comments_counter: 2,
        likes_counter: 1
      )
    end
    visit user_posts_path(user)
  end

  it 'displays each post with relevant information' do
    @posts = user.posts

    @posts.each do |post|
      expect(page).to have_content("Comments: #{post.comments_counter}")
      expect(page).to have_content("Likes: #{post.likes_counter}")
    end
  end

  it 'displays the first comments on a post' do
    @posts = user.posts

    @posts.each do |post|
      post.comments.first(2).each do |comment|
        expect(page).to have_content("#{comment.user.name} - #{comment.text}")
      end
    end
  end
  it 'Pagination' do
    expect(page).to have_button('Pagination')
  end
  context 'should redirect to post show path' do
    it 'user can see the exact post' do
      user = User.first
      posts = Post.order(:id).limit(2)
      visit user_posts_path(user.id)

      posts.each do |post|
        a = all('a#post_container')

        a.each_with_index do |link, index|
          post = posts[index]
          link.click

          expect(current_path).to eq(user_post_path(user.id, post.id))
          visit user_posts_path(user.id)
        end
      end
    end
  end
end
