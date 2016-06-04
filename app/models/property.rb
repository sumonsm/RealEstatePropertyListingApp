class Property < ActiveRecord::Base
  belongs_to :agency
  has_one :address

  enum property_type: [ :residential, :rental, :commercial ]

  validates :title, :presence => true
  validates :city, :presence => true
  validates :property_type, :presence => true, inclusion: { in: Property.property_types.keys }
  validates :price, :presence => true, numericality: { greater_than_or_equal_to: 0 }
end
