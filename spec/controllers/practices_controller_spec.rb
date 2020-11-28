require 'rails_helper'

RSpec.describe PracticesController, type: :controller do
  before do
    @alphabet = FactoryBot.create(:alphabet)
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: @alphabet.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GEt #index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end
end
