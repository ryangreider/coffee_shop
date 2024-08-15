class AddCategoryAndSupplierToItems < ActiveRecord::Migration[7.1]
  def change
    add_reference :items, :category, null: true, foreign_key: true, default: 1
    add_reference :items, :supplier, null: true, foreign_key: true, default: 1
  end
end
