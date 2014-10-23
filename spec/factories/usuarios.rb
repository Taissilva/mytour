# -*- encoding : utf-8 -*-
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    login "MyString"
    senha "MyString"
    nome "MyString"
    email nil
  end
end
