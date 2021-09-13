class AddEmailToApplyClasses < ActiveRecord::Migration
  def change
    add_column :apply_classes, :email, :string
  end
end
