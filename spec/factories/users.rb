FactoryGirl.define do
  factory :user do
    username "MyString"
    email "MyString"
    settings_private false
  end

  factory :private_user, class: User do
    username "MyString"
    email  "MyString"
    settings_private true
  end
end