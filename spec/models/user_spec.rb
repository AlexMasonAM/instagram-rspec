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

  it "#is_underage? check if the user is 21+" do
    underage_user = FactoryGirl.build(:underage_user)
    expect(underage_user.is_underage?).to eq(true)
    
    of_age_user = FactoryGirl.build(:user)
    expect(of_age_user.is_underage?).to eq(false)
  end

  it "checks for uniqueness of username" do
    
    # Creates a user with a username
    user1 = FactoryGirl.create(:user)

    # Create a user with the same username
    user2 = FactoryGirl.build(:user, username: user1.username)
    
    expect(user2).to be_invalid
  end

  it "#power_user? should be true for users with 1000+ posts" 
  

  it "#inactive? should be true for users without posts in the last 30 days" 
  

end
