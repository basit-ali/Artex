class Package < ActiveRecord::Base

    belongs_to :sub_product
    has_many :order

end
