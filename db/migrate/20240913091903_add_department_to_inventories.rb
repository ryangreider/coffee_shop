class AddDepartmentToInventories < ActiveRecord::Migration[7.1]
  def change
    add_reference :inventories, :department, null: false, foreign_key: true
  end
end
