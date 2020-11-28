require 'rails_helper'

RSpec.describe "Practices page", type: :request do
  let(:alphabetA) { FactoryBot.create(:alphabetA) }
  let!(:practiceA) { FactoryBot.create(:practiceA, alphabet_id: alphabetA.id) }
  let(:alphabetB) { FactoryBot.create(:alphabetB) }
  let!(:practiceB) { FactoryBot.create(:practiceB, alphabet_id: alphabetB.id) }

  describe "GET /practices" do
    it "responds successfully" do
      get practice_path(alphabetA)
      expect(response).to have_http_status(200)
    end
    it "shows alphabet" do
      get practice_path(alphabetA)
      expect(response.body).to include(alphabetA.name)
    end
    it "shows practice" do
      get practice_path(alphabetA)
      expect(response.body).to include(practiceA.name)
    end
  end
  describe "first alphabet" do
    it "won't show previous page arrow" do
      get practice_path(alphabetA)
      expect(Capybara.string(response.body)).not_to have_selector ".previous-page"
    end
    it "shows next page arrow" do
      get practice_path(alphabetA)
      expect(Capybara.string(response.body)).to have_selector ".next-page"
    end
  end
  describe "last alphabet" do
    it "won't show next page arrow" do
      get practice_path(alphabetB)
      expect(Capybara.string(response.body)).not_to have_selector ".next-page"
    end
    it "shows previous page arrow" do
      get practice_path(alphabetB)
      expect(Capybara.string(response.body)).to have_selector ".previous-page"
    end
  end
end
