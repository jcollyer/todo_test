json.array!(@lists) do |list|
  json.extract! list, :name, :status
  json.url list_url(list, format: :json)
end