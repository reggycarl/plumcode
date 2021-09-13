class AddMobileToApplyClasses < ActiveRecord::Migration
  def change
    add_column :apply_classes, :mobile, :integer
  end
end
