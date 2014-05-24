require 'spec_helper'

describe Position do
  it { should have_field(:name) }
  it { should have_field(:price) }
end
