json.array!(@phones) do |phone|
  json.extract! phone, :id, :person_id, :value
  json.url phone_url(phone, format: :json)
end
