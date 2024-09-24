json.extract! course_prerequisite, :id, :course_id, :prerequisite_id, :created_at, :updated_at
json.url course_prerequisite_url(course_prerequisite, format: :json)
