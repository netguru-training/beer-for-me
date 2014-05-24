# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_item do
    quantity 3
    position { FactoryGirl.build(:position) }
  end
end
