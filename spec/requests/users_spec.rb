require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    before :each do
      get users_path
    end

  end
end
