require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "validates it has a user" do
    post = FactoryGirl.build(:post)
    expect(post.user.present?).to eq(true)
  end
end
