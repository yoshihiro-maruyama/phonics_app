require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryBot.create(:user) }

  it "is valid with a name, password" do
    expect(user).to be_valid
  end

  it "is invalid without a name" do
    user.name = nil
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a password" do
    user.password = nil
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    same_name_user = FactoryBot.build(:user)
    same_name_user.valid?
    expect(same_name_user.errors[:name]).to include("has already been taken")
  end
end
