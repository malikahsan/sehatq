json.extract! doctor, :id, :name, :specialist_id, :hospital_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
