class SubProduct < ActiveRecord::Base

  belongs_to :product
  has_many :packages


end
