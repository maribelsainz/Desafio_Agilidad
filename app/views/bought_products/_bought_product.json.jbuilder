json.extract! bought_product, :id, :user_id, :product_id, :created_at, :updated_at
json.url bought_product_url(bought_product, format: :json)
