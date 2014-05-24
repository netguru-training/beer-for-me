# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    sequence :name do |n|
      "Position #{n}"
    end
    price 12
  end
end
