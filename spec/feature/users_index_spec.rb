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

  it 'displays the username of all other users' do
    users.each do |user|
      expect(page).to have_content(user.name)
    end
  end
