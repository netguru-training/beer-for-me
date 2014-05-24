class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :number, type: Integer
  field :status, type: String

  has_many :order_items

  before_create :set_number

  def set_number
    self.number = new_order_number
  end

  private

  def new_order_number
    last_order_number != 60 ? last_order_number + 1 : last_order_number - 50
  end

  def last_order_number
    Order.first ? Order.first.number : 9
  end

end
