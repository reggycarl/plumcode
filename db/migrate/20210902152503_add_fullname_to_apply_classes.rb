class AddFullnameToApplyClasses < ActiveRecord::Migration
  def change
    add_column :apply_classes, :fullname, :string
  end
end
