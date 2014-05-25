# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_item do
    quantity { Random.rand(10) + 1 }
    position { FactoryGirl.create(:position) }
    order
  end
end
