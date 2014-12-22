json.array!(@items) do |item|
  json.extract! item, :id, :name, :number
  json.url item_url(item, format: :json)
end
