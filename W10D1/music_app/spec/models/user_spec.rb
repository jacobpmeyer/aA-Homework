require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:email) }
    it { should validate_length_of(:password, minimum: 10, on: :create)}
  end
 
  subject(:user) { User.create!(email: "mashu@appacademy.io", password: "hunter123") }

  describe "#is_password?" do
    it "should check if the given password is the user's password" do
      expect(user.is_password?("hunter2")).to be(true)
    end
  end

  describe "::find_by_credentials" do
    it "should match a user to the credentials provieded" do
      user_var = User.find_by_credentials("mashu@appacademy.io", 'hunter2')
      expect(user_var).to eq(user)
    end
  end

  describe "#reset_session_token!" do
    it "should reset_the user's session token" do
      token = user.session_token
      user.reset_session_token!
      expect(user.session_token).not_to eq(token)
    end
  end
end
