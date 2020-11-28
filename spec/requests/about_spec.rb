require 'rails_helper'

RSpec.describe "About page", type: :request do
  describe "GET /about" do
    it "responds successfully" do
      get about_path
      expect(response).to have_http_status(200)
    end
  end
end
