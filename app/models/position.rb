class Position
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: Money

  validates_numericality_of :price, greater_than: 0
end
