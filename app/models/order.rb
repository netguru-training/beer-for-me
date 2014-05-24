class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :number, type: Integer
  field :status, type: String

  has_many :order_items

end
