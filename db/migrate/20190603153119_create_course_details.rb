class CreateCourseDetails < ActiveRecord::Migration
  def change
    create_table :course_details do |t|
      t.integer :course_id
      t.string :course_description
      t.string :course_duration
      t.string :lecture_hours
      t.string :course_curriculum

      t.timestamps null: false
    end
  end
end
