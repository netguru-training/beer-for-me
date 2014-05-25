class Position
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: Money
  field :image, type: String

  validates_numericality_of :price, greater_than: 0

end
