json.extract! course, :id, :course_name, :course_image, :amount, :tutor_name, :tutor_info, :course_level, :category, :created_at, :updated_at
json.url course_url(course, format: :json)
