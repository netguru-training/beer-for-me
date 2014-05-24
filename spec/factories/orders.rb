# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    after(:create) do |order|
      FactoryGirl.create_list(:order_item, 3, order: order)
    end
  end
end
