class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :number, type: Integer
  has_many :order_items

end
