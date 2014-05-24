require 'spec_helper'

describe OrderItem do
  it { should embed_one :position }
  it { should have_field :quantity }
  it { should belong_to :order}

  let(:position) { create(:position) }
  let(:order_item) { create(:order_item, position: position) }

end
