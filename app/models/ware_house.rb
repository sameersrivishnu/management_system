class WareHouse < ApplicationRecord
	has_many :product_ware_houses ,:dependent => :destroy
	validates :name, presence: true	
	validates :pincode, presence: true
	validates :max_capacity, presence: true
	validates :wh_code, length: { minimum: 4 ,maximum: 16}	
	validates_uniqueness_of :wh_code, presence: true
end
