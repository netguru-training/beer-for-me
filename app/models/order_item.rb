class OrderItem
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :quantity, type: Integer

  belongs_to :order
  embeds_many :positions
  
end
