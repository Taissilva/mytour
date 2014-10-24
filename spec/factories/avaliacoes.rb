# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :avaliacao do
    positiva "MyString"
    negativa "MyString"
    usuario nil
    cidade nil
    lugar nil
  end
end
