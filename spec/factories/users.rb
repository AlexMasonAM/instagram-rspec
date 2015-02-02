FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email {Faker::Internet.email}
    settings_private false
    date_of_birth { 21.years.ago }
    
    factory :private_user do
      # username "MyString"
      # email  "MyString"
      settings_private true
    end

    factory :underage_user do
      # username "MyString"
      # email "MyString"
      # settings_private false
      date_of_birth { 20.years.ago }
    end
  end
end