# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :notice do
    content "MyString"
    shop nil
  end
end
