class CreateProductWareHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :product_ware_houses do |t|
      t.integer :product_id
      t.integer :ware_house_id    	
      t.integer :item_count  
      t.integer :low_item_threshold  
      
      t.timestamps
    end  	
  end
end



