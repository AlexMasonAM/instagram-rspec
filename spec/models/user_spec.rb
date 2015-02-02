require 'rails_helper'

RSpec.describe User, :type => :model do
  
  it "should validate presence of username" do
    user = FactoryGirl.build(:user)
    user.username = nil
    expect(user).to be_invalid
  end
  it "should confirm that a user with a private settings is private" do
    user = FactoryGirl.build(:private_user)
    expect(user.settings_private).to eq(true)
  end  
end
