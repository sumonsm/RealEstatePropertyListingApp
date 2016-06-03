class Agency < ActiveRecord::Base
  has_many :properties, dependent: :destroy
  validates :title, :presence => true

end
