class ProductWareHouse < ApplicationRecord
	validates :item_count, presence: true	
	validates :low_item_threshold, presence: true	
	belongs_to :product
	belongs_to :ware_house	
end
