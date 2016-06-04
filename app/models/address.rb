class Address < ActiveRecord::Base
  belongs_to :property, dependent: :destroy
  validates :address, :presence => true
end
