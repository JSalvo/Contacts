json.array!(@names) do |name|
  json.extract! name, :id, :person_id, :prefix, :first, :middle, :last, :suffix
  json.url name_url(name, format: :json)
end
