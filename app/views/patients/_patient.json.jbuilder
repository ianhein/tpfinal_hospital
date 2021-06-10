json.extract! patient, :id, :name, :last_name, :dni, :birth, :number_hc, :created_at, :updated_at
json.url patient_url(patient, format: :json)
