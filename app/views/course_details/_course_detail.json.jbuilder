json.extract! course_detail, :id, :course_id, :course_description, :course_duration, :lecture_hours, :course_curriculum, :created_at, :updated_at
json.url course_detail_url(course_detail, format: :json)
