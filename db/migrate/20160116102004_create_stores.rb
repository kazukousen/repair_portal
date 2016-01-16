class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.text :address
      t.text :phone_number
      t.integer :sub_category_id
      t.text :body

      t.timestamps null: false
    end
  end
end
