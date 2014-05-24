require 'spec_helper'

describe Order do
  it { should have_many(:order_items) }
  it { should have_field(:number) }
  it { should have_field(:status) }
end
