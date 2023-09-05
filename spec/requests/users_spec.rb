require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    before :each do
      get users_path
    end

    it 'should work!' do
      expect(response).to have_http_status(200)
    end

    it 'renders template correctly' do
      expect(response).to render_template(:index)
    end

    it "doesn't renders template  other than /users" do
      expect(response).to_not render_template(:show)
    end

    it 'shows the correct placeholder text' do
      expect(response.body).to include('User was successfully created.')
    end
  
end
