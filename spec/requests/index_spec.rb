require 'rails_helper'

RSpec.describe "Index page", type: :request do
  let!(:alphabetA) { FactoryBot.create(:alphabetA) }

  describe "GET /index" do
    it "responds successfully" do
      get practices_path
      expect(response).to have_http_status(200)
    end
    it "has alphabet's link" do
      get practices_path
      expect(response.body).to include(alphabetA.name)
    end
  end
end
