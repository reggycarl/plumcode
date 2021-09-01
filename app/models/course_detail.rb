class CourseDetail < ActiveRecord::Base
	
	belongs_to :a_course, class_name: 'Course', foreign_key: :course_id
end
