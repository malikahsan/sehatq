json.extract! schedule_booked, :id, :patient_name, :schedule_id, :doctor_id, :created_at, :updated_at
json.url schedule_booked_url(schedule_booked, format: :json)
