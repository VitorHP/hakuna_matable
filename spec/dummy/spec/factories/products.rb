# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyText"
    size 1
    price "9.99"
    expires_at "2014-02-25 00:49:05"
  end
end
