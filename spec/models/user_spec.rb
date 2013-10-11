require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :username }


  it "should validate email format" do
    expect {
      FactoryGirl.create(:user, email: "invalid")
    }.to raise_error
  end

  it "should make a new user that does not persist" do
    user = User.new
    expect(user).not_to be_persisted
  end

  it "should make a new user that persists when saved" do
    expect {
      FactoryGirl.create(:user)
    }.to change { User.count }.by 1
  end


end