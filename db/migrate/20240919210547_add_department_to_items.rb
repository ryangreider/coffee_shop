class AddDepartmentToItems < ActiveRecord::Migration[7.1]
  def change
    add_reference :items, :department, null: false, foreign_key: true
  end
end
