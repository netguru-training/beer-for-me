class OrderItem
  include Mongoid::Document
  belongs_to :order
end
