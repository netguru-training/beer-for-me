class Position
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: BigDecimal

  embedded_in :order_item

end
