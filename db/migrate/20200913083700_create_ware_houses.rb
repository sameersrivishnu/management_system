class CreateWareHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :ware_houses do |t|
      t.string :wh_code
      t.string :name    	
      t.integer :pincode  
      t.integer :max_capacity  
      
      t.timestamps
    end
  end
end
