json.array!(@addresses) do |address|
  json.extract! address, :id, :person_id, :value
  json.url address_url(address, format: :json)
end
