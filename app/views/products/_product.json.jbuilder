json.extract! product, :id, :name, :sku_code, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
