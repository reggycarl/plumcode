class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_image
      t.float :amount
      t.string :tutor_name
      t.string :tutor_info
      t.string :course_level
      t.string :category

      t.timestamps null: false
    end
  end
end
