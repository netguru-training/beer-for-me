require 'spec_helper'

describe OrderItem do
  it { should have_many :positions }
  it { should have_field :quantity }
  it { should belong_to :order}
end
