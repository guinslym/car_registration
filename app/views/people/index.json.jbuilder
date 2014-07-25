json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :street_address, :city, :province, :postal_code, :telephone_number
  json.url person_url(person, format: :json)
end
