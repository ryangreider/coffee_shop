class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.string :category
      t.decimal :cost
      t.text :note

      t.timestamps
    end
  end
end


