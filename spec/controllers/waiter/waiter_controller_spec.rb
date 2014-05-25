require 'spec_helper'

describe Waiter::OrdersController do

  describe "New order" do
    let(:position) { create(:position) }

    it "exposes menu positions" do
      controller.positions.should include position
    end

  end

end
