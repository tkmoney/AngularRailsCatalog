FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyText"
    price "9.99"
    advertiser_id 1
    association :advertiser
  end
end
