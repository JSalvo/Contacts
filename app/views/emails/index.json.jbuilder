json.array!(@emails) do |email|
  json.extract! email, :id, :person_id, :value
  json.url email_url(email, format: :json)
end
