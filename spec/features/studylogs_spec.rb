require 'rails_helper'

RSpec.feature "Studylogs", type: :feature do
  let!(:user) { FactoryBot.create(:user) }
  let!(:alphabet) { FactoryBot.create(:alphabetA) }

  scenario "user creates a new studylog" do
    sign_up
    click_on "スタート！"
    visit root_path
    expect(page).to have_css ".has-events"
  end
end
