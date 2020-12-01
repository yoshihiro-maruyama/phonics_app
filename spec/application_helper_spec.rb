require 'rails_helper'

RSpec.describe "ApplicationHelper", type: :helper do
  include ApplicationHelper
  let(:base_title) { 'ABC Phonics' }

  describe "full_title" do
    context "page_title is exist" do
      it "will show page_title - ABC Phonics" do
        expect(full_title("page_title")).to eq "page_title - #{base_title}"
      end
    end

    context "page_title is not exist" do
      it "will only show ABC Phonics" do
        expect(full_title('')).to eq "#{base_title}"
        expect(full_title(nil)).to eq "#{base_title}"
      end
    end
  end
end
