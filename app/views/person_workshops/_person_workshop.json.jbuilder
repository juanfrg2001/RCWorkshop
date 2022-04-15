json.extract! person_workshop, :id, :person_name, :person_last_name, :person_telephone, :person_identification, :active, :city_id, :created_at, :updated_at
json.url person_workshop_url(person_workshop, format: :json)
