class Position
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: Money

  embedded_in :order_item

  validates_numericality_of :price, greater_than: 0
end
