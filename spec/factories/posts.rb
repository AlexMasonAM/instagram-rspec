FactoryGirl.define do
  factory :post do
    image_url "MyString"
    body_text "MyString"
    
    association :user, factory: :private_user
  end

end
