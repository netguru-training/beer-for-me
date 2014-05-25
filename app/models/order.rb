class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :number, type: Integer

  # available status:
  # PENDING, READY, COMPLETED
  field :status, type: String, default: 'PENDING'

  has_many :order_items

  before_create :set_number

  scope :pending, -> { where(status: 'PENDING') }
  scope :noncompleted, -> { where(:status.ne => 'COMPLETED') }
  scope :recent, -> { order_by(:created_at => :desc).limit(10) }

  def set_number
    self.number = new_order_number
  end

  def next_status
    case self.status
    when 'PENDING' then 'READY'
    when 'READY' then 'COMPLETED'
    end
  end

  private

  def new_order_number
    last_order_number != 60 ? last_order_number + 1 : last_order_number - 50
  end

  def last_order_number
    Order.count > 0 ? newest_order.number : 9
  end

  def newest_order
    Order.recent.first
  end

end
