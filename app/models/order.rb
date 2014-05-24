class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :number, type: Integer

  # available status:
  # PENDING, READY, COMPLETED
  field :status, type: String, default: 'PENDING'

  has_many :order_items

  before_create :set_number

  scope :pending, -> { Order.where(status: 'PENDING') }
  scope :noncompleted , -> { where(:status.ne => 'COMPLETED') }

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
