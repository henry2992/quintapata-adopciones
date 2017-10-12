require 'rails_helper'

RSpec.describe PetsController, type: :controller do
	
	describe "GET #index" do
    it "returns a 200 custom status code" do
      get :index
      expect(response).to have_http_status(200)
    end
	end
end
