# coding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hoge do
    name "グルメ"
  end
  factory :category2 do
    name "美容・健康"
  end
  factory :category3 do
    name "遊ぶ・趣味"
  end
  factory :category4 do
    name "宿泊・ホテル"
  end
  factory :category5 do
    name "ショッピング"
  end
end
