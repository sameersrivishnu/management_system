# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products = Product.create([{ name: 'Shirts', sku_code: 'abcdef9h', price: 1000   },
 { name: 'laptop', sku_code: 'abcdefga', price: 200000   },{ name: 'shoes', sku_code: 'abckefgb', price: 4250   },
 { name: 'mobile', sku_code: 'abcdefgb', price: 35800   },{ name: 'heels', sku_code: 'abcrefge', price: 3330   },
 { name: 'watch', sku_code: 'abcdefgc', price: 3058   },{ name: 'tops', sku_code: 'abciefge', price: 833   },
 { name: 'spects', sku_code: 'abcdefgd', price: 2358   },{ name: 'wallet', sku_code: 'abcsefge', price: 333   },
 { name: 'earphones', sku_code: 'abcdefge', price: 358   },{ name: 'earring', sku_code: 'abchefge', price: 2599   },
 { name: 'bluetooth', sku_code: 'abcdefgf', price: 1358   },{ name: 'bracelet', sku_code: 'abcnefge', price: 4333   },
 { name: 'wardrobe', sku_code: 'abcdefgh', price: 3580   },{ name: 'bangle', sku_code: 'abcaefge', price: 1599   },
 { name: 'dressing table', sku_code: 'abcdefgi', price: 5555  },{ name: 'suitcase', sku_code: 'akcdefge', price: 3355   },
 { name: 'sofa', sku_code: 'abcdefgj', price: 9999   },{ name: 'handbag', sku_code: 'arcdefge', price: 3300   },
 { name: 'chairs', sku_code: 'abcdefgk', price: 3560   },{ name: 'sneakers', sku_code: 'aicdefge', price: 2199   },
 { name: 'mixer', sku_code: 'abcdefgl', price: 2350   },{ name: 'belt', sku_code: 'ascdefge', price: 300   },
 { name: 'grinder', sku_code: 'abcdefgm', price: 3500   },{ name: 'fragrance', sku_code: 'ahcdefge', price: 850   },
 { name: 'power bank', sku_code: 'abcdefgn', price: 3000   },{ name: 'foundation', sku_code: 'ancdefge', price: 1000   },
 { name: 'printer', sku_code: 'abcdefgo', price: 5999   },{ name: 'lipstick', sku_code: 'aacdefge', price: 799   },
 { name: 'speaker', sku_code: 'abcdefgp', price: 3580   },{ name: 'kajal', sku_code: 'abbdefge', price: 400   },
 { name: 'cameras', sku_code: 'abcdefgq', price: 9000   },{ name: 'facewash', sku_code: 'nbcdefge', price: 299   },
 { name: 'trimmer', sku_code: 'abcdefgr', price: 3500   },{ name: 'beds', sku_code: 'hbcdefge', price: 33300   },
 { name: 'charger', sku_code: 'abcdefgs', price: 399   },{ name: 'aquarium', sku_code: 'sbcdefge', price: 5333   },
 { name: 'pendrive', sku_code: 'abcdefgt', price: 4999   },{ name: 'bookshelve', sku_code: 'ibcdefge', price: 7330   },
 { name: 'gamepad', sku_code: 'abcdefgu', price: 1500   },{ name: 'dining table', sku_code: 'rbcdefge', price: 33333   },
 { name: 'dryers', sku_code: 'abcdefgv', price: 2599   },{ name: 'microwave', sku_code: 'kbcdefge', price: 5550   },
 { name: 'staightner', sku_code: 'abcdefgx', price: 4000   },{ name: 'paintings', sku_code: 'abcdef1e', price: 2000   },
 { name: 'massager', sku_code: 'abcdefgy', price: 300   },{ name: 'wall shelves', sku_code: 'abcdef2e', price: 3850   },
 { name: 'projector', sku_code: 'abcdefgz', price: 8000  },{ name: 'night lamps', sku_code: 'abcdef3e', price: 1250   },
 { name: 'clock', sku_code: 'abcdefgw', price: 500   },{ name: 'curtains', sku_code: 'abcdef4e', price: 1818   },
 { name: 'trouser', sku_code: 'abcdefgg', price: 599   },{ name: 'cushion', sku_code: 'abcdef5e', price: 199   },
 { name: 'jeans', sku_code: 'abcdafgc', price: 1999   },{ name: 'mouse', sku_code: 'abcdef6e', price: 1133   },
 { name: 't-shirts', sku_code: 'abcdbfgc', price: 499   },{ name: 'keyboard', sku_code: 'abcdef7e', price: 7100   },
 { name: 'kurtas', sku_code: 'abcdcfgf', price: 1800   },{ name: 'jewellery', sku_code: 'abcde8gt', price: 100599   },
 { name: 'sarees', sku_code: 'abcdcfgg', price: 8999   }])


wares = WareHouse.create([{ wh_code: 'Star', name:'Mumbai', pincode: 566914, max_capacity: 1000 },
	{ wh_code: 'Sunny', name:'New Delhi', pincode: 566500, max_capacity: 1000 },
{ wh_code: 'Moon', name:'Banglore', pincode: 566456, max_capacity: 1000 }])



wares.each do |u|
	products.each do |v|
		if (u.name == "Banglore")
			if(v.id % 3 == 0)
		      ProductWareHouse.create(product_id: v.id , ware_house_id: u.id, item_count: 6, low_item_threshold: 10)
            else
		      ProductWareHouse.create(product_id: v.id , ware_house_id: u.id, item_count: 25, low_item_threshold: 10)
            end	
	    end

		if (u.name == "Mumbai")
		  ProductWareHouse.create(product_id: v.id , ware_house_id: u.id, item_count: 20, low_item_threshold: 10)
	    end

		if (u.name == "New Delhi")
			if(v.id % 2 == 0)
		      ProductWareHouse.create(product_id: v.id , ware_house_id: u.id, item_count: 6, low_item_threshold: 10)
            else
		      ProductWareHouse.create(product_id: v.id , ware_house_id: u.id, item_count: 36, low_item_threshold: 10)
            end	
        end	

	end
end	 
