json.extract! item, :id, :name, :quantity, :category, :cost, :note, :created_at, :updated_at
json.url item_url(item, format: :json)
