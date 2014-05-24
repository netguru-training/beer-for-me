require 'spec_helper'

describe Position do
  it { should have_field(:name) }
  it { should have_field(:price) }
  it { should be_embedded_in(:order_item) }

  let(:position) { create(:position) }

end
