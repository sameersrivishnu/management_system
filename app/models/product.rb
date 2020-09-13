class Product < ApplicationRecord
	validates_uniqueness_of :sku_code, presence: true
	validates :name, presence: true	
	validates :price, presence: true
	validates :sku_code, length: { minimum: 8 ,maximum: 8}
	has_many :product_ware_houses ,:dependent => :destroy	
end
