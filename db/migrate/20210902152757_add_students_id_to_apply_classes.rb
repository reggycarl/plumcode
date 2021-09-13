class AddStudentsIdToApplyClasses < ActiveRecord::Migration
  def change
    add_column :apply_classes, :student_id, :integer
  end
end
