require 'spec_helper'

describe OrderItem do
  it { should embed_many :positions }
  it { should have_field :quantity }
  it { should belong_to :order}

  let(:order_item) { create(:order_item) }
end
