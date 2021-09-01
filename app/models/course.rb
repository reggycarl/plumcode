class Course < ActiveRecord::Base
	has_many :course_details, class_name: 'CourseDetail', foreign_key: :course_id
end
