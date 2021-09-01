class CreateApplyClasses < ActiveRecord::Migration
  def change
    create_table :apply_classes do |t|
      t.string :user_id
      t.text :reason
      t.string :skill_level

      t.timestamps null: false
    end
  end
end
