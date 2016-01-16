class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :body
      t.integer :user_id
      t.integer :main_category_id
      t.integer :sub_category_id

      t.timestamps null: false
    end
  end
end
