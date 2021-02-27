json.extract! instructor, :id, :id_instructor, :first, :last, :email, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
