require 'rails_helper'

RSpec.describe HomepageController, type: :controller do
  describe 'GET homepage' do
    it 'return status OK' do
      get :homepage
      expect(response).to have_http_status(:ok)
    end
  end
end