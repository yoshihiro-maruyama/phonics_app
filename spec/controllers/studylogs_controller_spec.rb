require 'rails_helper'

RSpec.describe StudylogsController, type: :controller do
  describe "#create" do
    let!(:user) { FactoryBot.create(:user) }
    let!(:other_user) { FactoryBot.create(:other_user) }

    context "as an authenticated user" do
      it "adds a studylog" do
        login user
        expect { post :create }.to change(user.studylogs, :count).by(1)
      end
    end

    context "as an unauthorized user" do
      it "does not create the studylog" do
        login other_user
        expect { post :create }.not_to change(user.studylogs, :count)
      end
    end
  end
end
