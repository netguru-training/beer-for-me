require 'spec_helper'

describe Order do
  it { should have_many(:order_items) }
  it { should have_field(:number) }
  it { should have_field(:status) }

  let!(:order) { create(:order) }
  let!(:order2) { create(:order) }
  
  it "should set different orders number" do
    expect(order.number).not_to equal(order2.number)
  end

  it "should increase newer order number by one" do
    expect(order2.number).to eq(order.number+1)
    order3 = FactoryGirl.create(:order)
    expect(order3.number).to eq(order2.number+1)
  end

  it "should set reset number cycle" do
    Order.recent.first.update_attribute(:number,60)
    order3 = FactoryGirl.create(:order)
    expect(order3.number).to eq(10)
  end

end
