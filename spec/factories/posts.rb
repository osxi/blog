FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyText"
    vote 1
    user nil
  end
end
