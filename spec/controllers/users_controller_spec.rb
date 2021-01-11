require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }

  describe "#new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end
end
