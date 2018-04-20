json.extract! patient, :id, :name, :gender, :dob, :notes, :created_at, :updated_at
json.url patient_url(patient, format: :json)
