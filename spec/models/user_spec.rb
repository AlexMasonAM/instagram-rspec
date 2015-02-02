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
end
