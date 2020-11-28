require 'rails_helper'

RSpec.feature "Practices", type: :feature do
  let(:alphabetA) { FactoryBot.create(:alphabetA) }
  let!(:practiceA) { FactoryBot.create(:practiceA, alphabet_id: alphabetA.id) }
  let(:alphabetB) { FactoryBot.create(:alphabetB) }
  let!(:practiceB) { FactoryBot.create(:practiceB, alphabet_id: alphabetB.id) }

  scenario "start alphabet practice" do
    visit root_path
    click_link "スタート！"
    click_on "next-page"
    expect(current_path).to eq practice_path(alphabetB.id)
    click_on "previous-page"
    expect(current_path).to eq practice_path(alphabetA.id)
  end
end
