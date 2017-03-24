class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,  type: String
  field :price, type: BigDecimal

  validates :name, presence: true
end
