json.array!(@urls) do |url|
  json.extract! url, :id, :person_id, :value
  json.url url_url(url, format: :json)
end
