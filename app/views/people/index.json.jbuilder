json.array!(@people) do |person|
  json.extract! person, :id, :title, :name, :nickname, :image, :company, :notes
  json.url person_url(person, format: :json)
end
