require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  let!(:users) do
    [
      User.create(name: 'Sarkodie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', posts_counter: 2),
      User.create(name: 'Ponobiom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', posts_counter: 5),
      User.create(name: 'Stonebwoy', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', posts_counter: 3)
    ]
  end

  before do
    visit root_path
  end

  it 'displays the username of each users' do
    users.each do |user|
      expect(page).to have_content(user.name)
    end
  end

  it "redirects to the correct user's show page when clicking on a user's profile link" do
    users.each do |user|
      click_link 'View profile', href: user_path(user)
      expect(page).to have_current_path(user_path(user))
      visit root_path
      expect(page).to have_link('View profile', href: user_path(user.id))
    end
  end

  it 'displays the profile picture for each user' do
    users.each do |user|
      expect(page).to have_css("img[src='#{user.photo}'][alt='user photo']")
    end
  end
end
