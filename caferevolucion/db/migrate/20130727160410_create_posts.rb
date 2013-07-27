class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :blog_id
      t.string :title
      t.string :category
      t.text :body

      t.timestamps
    end
  end
end
