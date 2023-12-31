require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /posts' do
    before :each do
      get '/users/2/posts'
    end
    it 'should works as expected' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders users/:user_id/posts template correctly' do
      expect(response).to render_template(:index)
    end

    it "doesn't renders template  other than users/:user_id/posts" do
      expect(response).to_not render_template(:show)
    end

    it 'shows the correct placeholder text' do
      expect(response.body).to include('Here is a list of all posts')
    end
  end

  describe 'GET /users/:user_id/posts/:id' do
    before :each do
      get '/users/2/posts/2'
    end

    it 'should work correctly' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders show template correctly' do
      expect(response).to render_template(:show)
    end

    it "doesn't renders template other than /users/:user_id/posts/:id" do
      expect(response).to_not render_template(:index)
    end

    it 'shows the correct placeholder text' do
      expect(response.body).to include('Here is the detail of individual comments')
    end
  end
end
