json.array!(@customs) do |custom|
  json.extract! custom, :id, :person_id, :value, :type
  json.url custom_url(custom, format: :json)
end
