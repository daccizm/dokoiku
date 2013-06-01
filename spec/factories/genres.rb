# coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :genre1 do
    name "ラーメン・中華"
  end
  factory :genre2 do
    name "居酒屋"
  end
  factory :genre3 do
    name "和食"
  end
  factory :genre4 do
    name "洋食"
  end
end
