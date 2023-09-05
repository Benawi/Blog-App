require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    before :each do
      get users_path
    end

    it 'should work!' do
      expect(response).to have_http_status(200)
    end

  end
end
