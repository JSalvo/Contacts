json.array!(@p_dates) do |p_date|
  json.extract! p_date, :id, :person_id, :value
  json.url p_date_url(p_date, format: :json)
end
