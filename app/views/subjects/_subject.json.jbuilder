json.extract! subject, :id, :name, :abbreviation, :created_at, :updated_at
json.url subject_url(subject, format: :json)
