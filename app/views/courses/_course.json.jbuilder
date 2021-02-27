json.extract! course, :id, :id_course, :name, :code, :term, :created_at, :updated_at
json.url course_url(course, format: :json)
